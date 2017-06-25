
#ifndef XBEEENUMS_H
#define XBEEENUMS_H

#ifdef __cplusplus
extern "C" {
#endif

    enum class xbeeVersion {
		Unknown, S2, S2Pro, S2C, S2CPro
    };
    enum class xbeeNetRole {
		Unknown, Coordinator, Router, EndDevice
    };

#ifdef __cplusplus
}
#endif

#endif /* XBEEENUMS_H */
