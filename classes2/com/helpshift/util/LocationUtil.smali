.class public Lcom/helpshift/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field private static final LOCATION_MIN_DISTANCE:F = 10.0f

.field private static final TWO_MINUTES:I = 0x1d4c0


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 11

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 26
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    const-wide/32 v6, -0x1d4c0

    cmp-long v4, v1, v6

    if-gez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-eqz v3, :cond_2e

    return v0

    :cond_2e
    if-eqz v4, :cond_31

    return v5

    .line 42
    :cond_31
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    if-gez v2, :cond_44

    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    const/16 v6, 0xc8

    if-le v2, v6, :cond_4b

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    .line 48
    :goto_4c
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lcom/helpshift/util/LocationUtil;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz v4, :cond_5b

    return v0

    :cond_5b
    if-eqz v1, :cond_60

    if-nez v3, :cond_60

    return v0

    :cond_60
    if-eqz v1, :cond_67

    if-nez v2, :cond_67

    if-eqz p0, :cond_67

    return v0

    :cond_67
    return v5
.end method

.method public static isSameLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    .line 109
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    const/high16 p1, 0x41200000    # 10.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    if-nez p0, :cond_18

    if-nez p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0

    .line 123
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static limitLatitude(DD)Landroid/location/Location;
    .registers 12

    .line 86
    invoke-static {p0, p1}, Lcom/helpshift/util/LocationUtil;->limitLongitude(D)D

    move-result-wide p0

    const-wide v0, -0x3f99800000000000L    # -180.0

    const/4 v2, 0x1

    const-wide v3, 0x4066800000000000L    # 180.0

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v7, p0, v5

    if-lez v7, :cond_1b

    sub-double p0, v3, p0

    goto :goto_28

    :cond_1b
    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, p0, v5

    if-gez v7, :cond_27

    sub-double p0, v0, p0

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_33

    const-wide/16 v5, 0x0

    cmpl-double v2, p2, v5

    if-lez v2, :cond_31

    goto :goto_32

    :cond_31
    move-wide v0, v3

    :goto_32
    add-double/2addr p2, v0

    .line 99
    :cond_33
    invoke-static {p2, p3}, Lcom/helpshift/util/LocationUtil;->limitLongitude(D)D

    move-result-wide p2

    .line 101
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    .line 103
    invoke-virtual {v0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    return-object v0
.end method

.method private static limitLongitude(D)D
    .registers 7

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v2

    if-lez v4, :cond_11

    sub-double/2addr p0, v0

    goto :goto_1b

    :cond_11
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v2

    if-gtz v4, :cond_1b

    add-double/2addr p0, v0

    :cond_1b
    :goto_1b
    return-wide p0
.end method

.method public static sanitizeLocation(Landroid/location/Location;)Landroid/location/Location;
    .registers 5

    .line 65
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 66
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/helpshift/util/LocationUtil;->limitLatitude(DD)Landroid/location/Location;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 68
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    return-object p0
.end method
