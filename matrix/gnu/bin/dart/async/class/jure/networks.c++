#ifdef __cplusplus
extern "C" {
#endif

#include <stdbool.h>
#include <stdint.h>

typedef struct {
    uint32_t width;
    uint32_t height;
} ImageDimensions_t;

typedef struct {
    uint8_t r;
    uint8_t g;
    uint8_t b;
} Color_t;

typedef struct {
    ImageDimensions_t dimensions;
    Color_t *pixels;
} Image_t;

bool createImage(Image_t *image, uint32_t width, uint32_t height);
void destroyImage(Image_t *image);
bool setPixel(Image_t *image, uint32_t x, uint32_t y, const Color_t *color);
bool getPixel(const Image_t *image, uint32_t x, const Color_t *color); // returns
#ifdef __cplusplus
}
#endif

