// Skeleton code for HPCSE I (2018HS) Exam, 11.01.2019
// Prof. P. Koumoutsakos
// Coding 1: Julia Set

#include <chrono>
#include <cstdio>
#include <omp.h>
#include <vector>

// Use high resolution for benchmarking:
// constexpr int WIDTH = 3840;
// constexpr int HEIGHT = 2160 / 2;
// WIDTH = 640
// HEIGHT = 360 / 2
// Use lower resolution for development:
constexpr int WIDTH = 3840;
constexpr int HEIGHT = 2160 / 2;

constexpr int MAX_ITERATIONS = 1000;
short image[HEIGHT][WIDTH];


/*
 * Generate the Julia set.
 *
 * Fill each `image[iy][ix]` with the number of iterations for the point (x, y).
 */
void julia_set(void) {
    constexpr double cx = -0.624;   // Some parameters of the Julia set.
    constexpr double cy = 0.435;

    auto t0 = std::chrono::steady_clock::now();

    // TODO: Parallelize.
    #pragma omp parallel
    {
        #pragma omp for collapse(2) schedule(static, 32)
        for (int i = 0; i < HEIGHT; ++i){
            for (int j = 0; j < WIDTH; ++j) {
                // Compute `w = z_0 = x + i y` for the given pixel (j, i).
                double x = 1.3 * (j - .5 * WIDTH) / HEIGHT;
                double y = 1.3 *  i               / HEIGHT;  // Only one half.

                // Compute the number of iterations.
                int count = 0;
                while (x * x + y * y <= 4 && count < MAX_ITERATIONS) {
                    double nx = x * x - y * y + cx;
                    double ny = 2 * x * y + cy;
                    x = nx;
                    y = ny;
                    ++count;
                }
                image[i][j] = count;
            }
        }
    }
    auto t1 = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff = t1 - t0;
    printf("Computing done in %.2lfs\n", diff.count());
}


/*
 * Compute the histogram of iteration count.
 * 
 * Returns an `std::vector<int>`, where `i`-th elements represents the number
 * of pixels that had `i` iterations.
 */
std::vector<int> compute_histogram(void) {
    std::vector<int> result(MAX_ITERATIONS + 1);

    // TODO: Compute the histogram of iteration count.
    //       Parallelize with OpenMP.
    //
    //       To check your result, you can run `make plot`
    //       to plot the computed histogram (not mandatory).

    #pragma omp parallel
    {
        // Create a local histogram.
        std::vector<int> local(MAX_ITERATIONS + 1);
        #pragma omp for
            for (int i = 0; i < HEIGHT; ++i)
                for (int j = 0; j < WIDTH; ++j)
                    ++local[image[i][j]];

        // And reduce to the global histogram in a critial region.
        #pragma omp critical
            for (int i = 0; i < (int)local.size(); ++i)
                result[i] += local[i];
    }

    return result;
}





/*****************************************************************************/
/* Do not modify below this line                                             */
/*****************************************************************************/

/* Save matrix `image` into `image.txt` (which is then used by `plot.py`). */
void save_image(void) {
    FILE *f = fopen("image.txt", "w");
    for (int i = 0; i < HEIGHT; ++i) {
        for (int j = 0; j < WIDTH; ++j)
            fprintf(f, "%d ", (int)image[i][j]);
        fprintf(f, "\n");
    }
    fclose(f);
}

/* Save the histogram into `histogram.txt` (which is then used by `plot.py`). */
void save_histogram(const std::vector<int> &histogram) {
    FILE *f = fopen("histogram.txt", "w");
    for (int count : histogram)
        fprintf(f, "%d\n", count);
    fclose(f);
}

/* Main. */
int main(void) {
    julia_set();
    save_image();

    std::vector<int> histogram = compute_histogram();
    save_histogram(histogram);
    return 0;
}
