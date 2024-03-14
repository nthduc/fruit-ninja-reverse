.class synthetic Lcom/helpshift/account/domainmodel/UserManagerDM$3;
.super Ljava/lang/Object;
.source "UserManagerDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/account/domainmodel/UserManagerDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$common$AutoRetryFailedEventDM$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 598
    invoke-static {}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->values()[Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/account/domainmodel/UserManagerDM$3;->$SwitchMap$com$helpshift$common$AutoRetryFailedEventDM$EventType:[I

    :try_start_9
    sget-object v0, Lcom/helpshift/account/domainmodel/UserManagerDM$3;->$SwitchMap$com$helpshift$common$AutoRetryFailedEventDM$EventType:[I

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->PUSH_TOKEN:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    invoke-virtual {v1}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/helpshift/account/domainmodel/UserManagerDM$3;->$SwitchMap$com$helpshift$common$AutoRetryFailedEventDM$EventType:[I

    sget-object v1, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CLEAR_USER:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    invoke-virtual {v1}, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
