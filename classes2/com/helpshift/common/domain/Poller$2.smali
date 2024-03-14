.class synthetic Lcom/helpshift/common/domain/Poller$2;
.super Ljava/lang/Object;
.source "Poller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/domain/Poller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$common$domain$PollingInterval:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    invoke-static {}, Lcom/helpshift/common/domain/PollingInterval;->values()[Lcom/helpshift/common/domain/PollingInterval;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/common/domain/Poller$2;->$SwitchMap$com$helpshift$common$domain$PollingInterval:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/common/domain/Poller$2;->$SwitchMap$com$helpshift$common$domain$PollingInterval:[I

    sget-object v1, Lcom/helpshift/common/domain/PollingInterval;->AGGRESSIVE:Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/PollingInterval;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/common/domain/Poller$2;->$SwitchMap$com$helpshift$common$domain$PollingInterval:[I

    sget-object v1, Lcom/helpshift/common/domain/PollingInterval;->PASSIVE:Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/PollingInterval;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/helpshift/common/domain/Poller$2;->$SwitchMap$com$helpshift$common$domain$PollingInterval:[I

    sget-object v1, Lcom/helpshift/common/domain/PollingInterval;->CONSERVATIVE:Lcom/helpshift/common/domain/PollingInterval;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/PollingInterval;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
