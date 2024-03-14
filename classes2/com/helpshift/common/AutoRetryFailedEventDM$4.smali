.class Lcom/helpshift/common/AutoRetryFailedEventDM$4;
.super Lcom/helpshift/common/domain/F;
.source "AutoRetryFailedEventDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/common/AutoRetryFailedEventDM;->onUserAuthenticationUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/common/AutoRetryFailedEventDM;


# direct methods
.method constructor <init>(Lcom/helpshift/common/AutoRetryFailedEventDM;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/helpshift/common/AutoRetryFailedEventDM$4;->this$0:Lcom/helpshift/common/AutoRetryFailedEventDM;

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/helpshift/common/AutoRetryFailedEventDM$4;->this$0:Lcom/helpshift/common/AutoRetryFailedEventDM;

    # getter for: Lcom/helpshift/common/AutoRetryFailedEventDM;->pendingRetryEventTypes:Ljava/util/Set;
    invoke-static {v0}, Lcom/helpshift/common/AutoRetryFailedEventDM;->access$000(Lcom/helpshift/common/AutoRetryFailedEventDM;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/common/AutoRetryFailedEventDM;->retryFailedApis(Ljava/util/Set;)V

    return-void
.end method
