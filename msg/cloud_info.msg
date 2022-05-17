# Cloud Info
Header header 

int32[] startRingIndex # 每一根水平扫描线 可用于计算曲率的点的起始索引
int32[] endRingIndex # 每一根水平扫描线 可用于计算曲率的点的终止索引

int32[]  pointColInd # point column index in range image
float32[] pointRange # point range 

int64 imuAvailable
int64 odomAvailable

# Attitude for LOAM initialization
float32 imuRollInit
float32 imuPitchInit
float32 imuYawInit

# Initial guess from imu pre-integration
# 在imageProjection中，是预积分odom提供的点云起始时刻的位姿
float32 initialGuessX
float32 initialGuessY
float32 initialGuessZ
float32 initialGuessRoll
float32 initialGuessPitch
float32 initialGuessYaw

# Point cloud messages
sensor_msgs/PointCloud2 cloud_deskewed  # original cloud deskewed
sensor_msgs/PointCloud2 cloud_corner    # extracted corner feature
sensor_msgs/PointCloud2 cloud_surface   # extracted surface feature