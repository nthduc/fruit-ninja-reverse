.class synthetic Lcom/google/firebase/database/core/view/ViewProcessor$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    invoke-static {}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->values()[Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    :try_start_9
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->AckUserWrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
