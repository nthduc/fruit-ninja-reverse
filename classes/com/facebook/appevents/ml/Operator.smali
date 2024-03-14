.class final Lcom/facebook/appevents/ml/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addmv(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V
    .registers 12

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 29
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v1

    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x2

    .line 31
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 32
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 33
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p1

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v1, :cond_41

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v2, :cond_3e

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v3, :cond_3b

    mul-int v7, v4, v2

    mul-int v7, v7, v3

    mul-int v8, v5, v3

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 38
    aget v8, p0, v7

    aget v9, p1, v6

    add-float/2addr v8, v9

    aput v8, p0, v7
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_38} :catch_42

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_41
    return-void

    :catch_42
    move-exception p0

    .line 42
    const-class p1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static concatenate([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 14

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 90
    :try_start_b
    aget-object v2, p0, v0

    invoke-virtual {v2, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 92
    :goto_13
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v3, v5, :cond_21

    .line 93
    aget-object v5, p0, v3

    invoke-virtual {v5, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 95
    :cond_21
    new-instance v3, Lcom/facebook/appevents/ml/MTensor;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v0

    aput v4, v5, v6

    invoke-direct {v3, v5}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 96
    invoke-virtual {v3}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v2, :cond_53

    mul-int v8, v7, v4

    move v9, v8

    const/4 v8, 0x0

    .line 100
    :goto_38
    array-length v10, p0

    if-ge v8, v10, :cond_50

    .line 101
    aget-object v10, p0, v8

    invoke-virtual {v10}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v10

    .line 102
    aget-object v11, p0, v8

    invoke-virtual {v11, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v11

    mul-int v12, v7, v11

    .line 103
    invoke-static {v10, v12, v5, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4c} :catch_54

    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_53
    return-object v3

    :catch_54
    move-exception p0

    .line 107
    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static conv1D(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return-object v3

    :cond_e
    const/4 v2, 0x0

    .line 210
    :try_start_f
    invoke-virtual {v0, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    const/4 v5, 0x1

    .line 211
    invoke-virtual {v0, v5}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    const/4 v7, 0x2

    .line 212
    invoke-virtual {v0, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v8

    .line 213
    invoke-virtual {v1, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v9

    sub-int v10, v6, v9

    add-int/2addr v10, v5

    .line 215
    invoke-virtual {v1, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v11

    .line 216
    new-instance v12, Lcom/facebook/appevents/ml/MTensor;

    const/4 v13, 0x3

    new-array v13, v13, [I

    aput v4, v13, v2

    aput v10, v13, v5

    aput v11, v13, v7

    invoke-direct {v12, v13}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    .line 218
    invoke-virtual {v12}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v5

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v1

    const/4 v7, 0x0

    :goto_43
    if-ge v7, v4, :cond_8c

    const/4 v13, 0x0

    :goto_46
    if-ge v13, v11, :cond_88

    const/4 v14, 0x0

    :goto_49
    if-ge v14, v10, :cond_84

    const/4 v15, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4f
    if-ge v15, v9, :cond_76

    :goto_51
    if-ge v2, v8, :cond_72

    mul-int v17, v6, v8

    mul-int v17, v17, v7

    add-int v18, v15, v14

    mul-int v18, v18, v8

    add-int v17, v17, v18

    add-int v17, v17, v2

    .line 227
    aget v17, v0, v17

    mul-int v18, v15, v8

    add-int v18, v18, v2

    mul-int v18, v18, v11

    add-int v18, v18, v13

    aget v18, v1, v18

    mul-float v17, v17, v18

    add-float v16, v16, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_72
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_4f

    :cond_76
    mul-int v2, v10, v11

    mul-int v2, v2, v7

    mul-int v15, v14, v11

    add-int/2addr v2, v15

    add-int/2addr v2, v13

    .line 232
    aput v16, v5, v2
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_80} :catch_8d

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_49

    :cond_84
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_46

    :cond_88
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_43

    :cond_8c
    return-object v12

    :catch_8d
    move-exception v0

    .line 236
    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method

.method static dense(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 12

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 141
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    .line 142
    invoke-virtual {p2, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 143
    invoke-static {p0, p1}, Lcom/facebook/appevents/ml/Operator;->mul(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p0

    .line 144
    invoke-virtual {p2}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_35

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v3, :cond_32

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    .line 149
    aget v7, p2, v6

    aget v8, p1, v5

    add-float/2addr v7, v8

    aput v7, p2, v6
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2f} :catch_36

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_35
    return-object p0

    :catch_36
    move-exception p0

    .line 152
    const-class p1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static embedding([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 15

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 156
    :cond_a
    :try_start_a
    array-length v0, p0

    const/4 v2, 0x1

    .line 157
    invoke-virtual {p2, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 158
    new-instance v4, Lcom/facebook/appevents/ml/MTensor;

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    aput p1, v5, v2

    const/4 v2, 0x2

    aput v3, v5, v2

    invoke-direct {v4, v5}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 159
    invoke-virtual {v4}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v2

    .line 160
    invoke-virtual {p2}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p2

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v0, :cond_48

    .line 163
    aget-object v7, p0, v5

    invoke-static {v7, p1}, Lcom/facebook/appevents/ml/Utils;->vectorize(Ljava/lang/String;I)[I

    move-result-object v7

    const/4 v8, 0x0

    :goto_32
    if-ge v8, p1, :cond_45

    .line 165
    aget v9, v7, v8

    mul-int v9, v9, v3

    mul-int v10, v3, p1

    mul-int v10, v10, v5

    mul-int v11, v3, v8

    add-int/2addr v10, v11

    invoke-static {p2, v9, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_42} :catch_49

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_48
    return-object v4

    :catch_49
    move-exception p0

    .line 173
    const-class p1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static flatten(Lcom/facebook/appevents/ml/MTensor;I)V
    .registers 6

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 74
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getShapeSize()I

    move-result v0

    if-lt p1, v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x1

    move v0, p1

    const/4 v1, 0x1

    .line 78
    :goto_13
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getShapeSize()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 79
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    mul-int v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    add-int/lit8 v0, p1, 0x1

    .line 81
    new-array v0, v0, [I

    const/4 v2, 0x0

    :goto_27
    if-ge v2, p1, :cond_32

    .line 83
    invoke-virtual {p0, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 85
    :cond_32
    aput v1, v0, p1

    .line 86
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->reshape([I)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 87
    const-class p1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return-object v3

    :cond_e
    const/4 v2, 0x0

    .line 240
    :try_start_f
    invoke-virtual {v0, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    const/4 v5, 0x1

    .line 241
    invoke-virtual {v0, v5}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    const/4 v7, 0x2

    .line 242
    invoke-virtual {v0, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v8

    sub-int v9, v6, v1

    add-int/2addr v9, v5

    .line 244
    new-instance v10, Lcom/facebook/appevents/ml/MTensor;

    const/4 v11, 0x3

    new-array v11, v11, [I

    aput v4, v11, v2

    aput v9, v11, v5

    aput v8, v11, v7

    invoke-direct {v10, v11}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    .line 246
    invoke-virtual {v10}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v5

    const/4 v7, 0x0

    :goto_37
    if-ge v7, v4, :cond_75

    const/4 v11, 0x0

    :goto_3a
    if-ge v11, v8, :cond_70

    const/4 v12, 0x0

    :goto_3d
    if-ge v12, v9, :cond_6b

    mul-int v13, v7, v9

    mul-int v13, v13, v8

    mul-int v14, v12, v8

    add-int/2addr v13, v14

    add-int/2addr v13, v11

    mul-int v15, v7, v6

    mul-int v15, v15, v8

    add-int/2addr v15, v14

    add-int/2addr v15, v11

    const/4 v14, 0x1

    .line 253
    aput v14, v5, v13

    const/4 v14, 0x0

    :goto_51
    if-ge v14, v1, :cond_66

    .line 255
    aget v2, v5, v13

    mul-int v16, v14, v8

    add-int v16, v15, v16

    aget v3, v0, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v5, v13
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_61} :catch_76

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_51

    :cond_66
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3d

    :cond_6b
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3a

    :cond_70
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_37

    :cond_75
    return-object v10

    :catch_76
    move-exception v0

    .line 260
    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method static mul(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 16

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 45
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    .line 46
    invoke-virtual {p1, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    const/4 v4, 0x1

    .line 47
    invoke-virtual {p1, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 48
    new-instance v6, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v2, v7, v0

    aput v5, v7, v4

    invoke-direct {v6, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 49
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p1

    .line 51
    invoke-virtual {v6}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v4

    const/4 v7, 0x0

    :goto_31
    if-ge v7, v2, :cond_59

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v5, :cond_56

    mul-int v9, v7, v5

    add-int/2addr v9, v8

    const/4 v10, 0x0

    .line 55
    aput v10, v4, v9

    const/4 v10, 0x0

    :goto_3d
    if-ge v10, v3, :cond_53

    .line 57
    aget v11, v4, v9

    mul-int v12, v7, v3

    add-int/2addr v12, v10

    aget v12, p0, v12

    mul-int v13, v10, v5

    add-int/2addr v13, v8

    aget v13, p1, v13

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    aput v11, v4, v9
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_50} :catch_5a

    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_59
    return-object v6

    :catch_5a
    move-exception p0

    .line 61
    const-class p1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static relu(Lcom/facebook/appevents/ml/MTensor;)V
    .registers 4

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 65
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    const/4 v0, 0x0

    .line 66
    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    .line 67
    aget v1, p0, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1a

    .line 68
    aput v2, p0, v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1a} :catch_1e

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    return-void

    :catch_1e
    move-exception p0

    .line 71
    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static softmax(Lcom/facebook/appevents/ml/MTensor;)V
    .registers 11

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 111
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v1

    const/4 v2, 0x1

    .line 112
    invoke-virtual {p0, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    .line 113
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    :goto_17
    if-ge v0, v1, :cond_55

    mul-int v3, v0, v2

    add-int v4, v3, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v5, v3

    const/4 v7, 0x1

    :goto_21
    if-ge v5, v4, :cond_2e

    .line 121
    aget v8, p0, v5

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2b

    .line 122
    aget v7, p0, v5

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2e
    move v5, v3

    :goto_2f
    if-ge v5, v4, :cond_3f

    .line 127
    aget v8, p0, v5

    sub-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_3f
    move v5, v3

    :goto_40
    if-ge v5, v4, :cond_48

    .line 131
    aget v7, p0, v5

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_48
    :goto_48
    if-ge v3, v4, :cond_52

    .line 135
    aget v5, p0, v3

    div-float/2addr v5, v6

    aput v5, p0, v3
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_4f} :catch_56

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_55
    return-void

    :catch_56
    move-exception p0

    .line 138
    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static transpose2D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 11

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 177
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x1

    .line 178
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    .line 179
    new-instance v5, Lcom/facebook/appevents/ml/MTensor;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v4, v6, v0

    aput v2, v6, v3

    invoke-direct {v5, v6}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 180
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 181
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v3

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v2, :cond_3e

    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v4, :cond_3b

    mul-int v8, v7, v2

    add-int/2addr v8, v6

    mul-int v9, v6, v4

    add-int/2addr v9, v7

    .line 185
    aget v9, p0, v9

    aput v9, v3, v8
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_38} :catch_3f

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_3e
    return-object v5

    :catch_3f
    move-exception p0

    .line 188
    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static transpose3D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 14

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 192
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x1

    .line 193
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    const/4 v5, 0x2

    .line 194
    invoke-virtual {p0, v5}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    .line 195
    new-instance v7, Lcom/facebook/appevents/ml/MTensor;

    const/4 v8, 0x3

    new-array v8, v8, [I

    aput v6, v8, v0

    aput v4, v8, v3

    aput v2, v8, v5

    invoke-direct {v7, v8}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 196
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 197
    invoke-virtual {v7}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v3

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v2, :cond_55

    const/4 v8, 0x0

    :goto_33
    if-ge v8, v4, :cond_52

    const/4 v9, 0x0

    :goto_36
    if-ge v9, v6, :cond_4f

    mul-int v10, v9, v2

    mul-int v10, v10, v4

    mul-int v11, v8, v2

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    mul-int v11, v5, v4

    mul-int v11, v11, v6

    mul-int v12, v8, v6

    add-int/2addr v11, v12

    add-int/2addr v11, v9

    .line 202
    aget v11, p0, v11

    aput v11, v3, v10
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_4c} :catch_56

    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_55
    return-object v7

    :catch_56
    move-exception p0

    .line 206
    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
