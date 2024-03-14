.class public final enum Lcom/facebook/appevents/ml/ModelManager$Task;
.super Ljava/lang/Enum;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/ModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/ml/ModelManager$Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/ml/ModelManager$Task;

.field public static final enum MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

.field public static final enum MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 57
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v1, 0x0

    const-string v2, "MTML_INTEGRITY_DETECT"

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/ml/ModelManager$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    .line 58
    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v2, 0x1

    const-string v3, "MTML_APP_EVENT_PREDICTION"

    invoke-direct {v0, v3, v2}, Lcom/facebook/appevents/ml/ModelManager$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [Lcom/facebook/appevents/ml/ModelManager$Task;

    sget-object v3, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->$VALUES:[Lcom/facebook/appevents/ml/ModelManager$Task;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/ml/ModelManager$Task;
    .registers 2

    .line 56
    const-class v0, Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/ml/ModelManager$Task;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/ml/ModelManager$Task;
    .registers 1

    .line 56
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->$VALUES:[Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v0}, [Lcom/facebook/appevents/ml/ModelManager$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/ml/ModelManager$Task;

    return-object v0
.end method


# virtual methods
.method public toKey()Ljava/lang/String;
    .registers 3

    .line 61
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$4;->$SwitchMap$com$facebook$appevents$ml$ModelManager$Task:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const-string v0, "Unknown"

    return-object v0

    :cond_11
    const-string v0, "app_event_pred"

    return-object v0

    :cond_14
    const-string v0, "integrity_detect"

    return-object v0
.end method

.method public toUseCase()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$4;->$SwitchMap$com$facebook$appevents$ml$ModelManager$Task:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    const-string v0, "MTML_APP_EVENT_PRED"

    return-object v0

    :cond_13
    const-string v0, "MTML_INTEGRITY_DETECT"

    return-object v0
.end method
