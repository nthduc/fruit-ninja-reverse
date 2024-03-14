.class Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_THRESHOLD_GRAVITY:D = 2.299999952316284


# instance fields
.field private mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_6
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 46
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    if-eqz v0, :cond_4f

    .line 47
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 48
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 49
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1a} :catch_50

    const v2, 0x411ce80a

    div-float/2addr v0, v2

    float-to-double v3, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    div-float/2addr p1, v2

    float-to-double v5, p1

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v0

    add-double/2addr v3, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    :try_start_3d
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4002666660000000L    # 2.299999952316284

    cmpl-double p1, v0, v2

    if-lez p1, :cond_4f

    .line 59
    iget-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    invoke-interface {p1}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;->onShake()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4f} :catch_50

    :cond_4f
    return-void

    :catch_50
    move-exception p1

    .line 62
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 37
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 38
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
