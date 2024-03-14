.class synthetic Lcom/unity3d/services/analytics/AcquisitionType$1;
.super Ljava/lang/Object;
.source "AcquisitionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/analytics/AcquisitionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$services$analytics$AcquisitionType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9
    invoke-static {}, Lcom/unity3d/services/analytics/AcquisitionType;->values()[Lcom/unity3d/services/analytics/AcquisitionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/services/analytics/AcquisitionType$1;->$SwitchMap$com$unity3d$services$analytics$AcquisitionType:[I

    :try_start_9
    sget-object v0, Lcom/unity3d/services/analytics/AcquisitionType$1;->$SwitchMap$com$unity3d$services$analytics$AcquisitionType:[I

    sget-object v1, Lcom/unity3d/services/analytics/AcquisitionType;->SOFT:Lcom/unity3d/services/analytics/AcquisitionType;

    invoke-virtual {v1}, Lcom/unity3d/services/analytics/AcquisitionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/unity3d/services/analytics/AcquisitionType$1;->$SwitchMap$com$unity3d$services$analytics$AcquisitionType:[I

    sget-object v1, Lcom/unity3d/services/analytics/AcquisitionType;->PREMIUM:Lcom/unity3d/services/analytics/AcquisitionType;

    invoke-virtual {v1}, Lcom/unity3d/services/analytics/AcquisitionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
