.class Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;
.super Lcom/helpshift/common/domain/F;
.source "ConfigFetchDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->fetchServerConfig(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

.field final synthetic val$shouldAutoRetryOnFailure:Z


# direct methods
.method constructor <init>(Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;Z)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;->this$0:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    iput-boolean p2, p0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;->val$shouldAutoRetryOnFailure:Z

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 5

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;->this$0:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    # invokes: Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->fetchServerConfigInternal()V
    invoke-static {v0}, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->access$000(Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;)V
    :try_end_5
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 77
    iget-boolean v1, p0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;->val$shouldAutoRetryOnFailure:Z

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v2, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-eq v1, v2, :cond_24

    .line 78
    iget-object v1, p0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;->this$0:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    # getter for: Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->domain:Lcom/helpshift/common/domain/Domain;
    invoke-static {v1}, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->access$100(Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;)Lcom/helpshift/common/domain/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getAutoRetryFailedEventDM()Lcom/helpshift/common/AutoRetryFailedEventDM;

    move-result-object v1

    sget-object v2, Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;->CONFIG:Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;

    .line 79
    invoke-virtual {v0}, Lcom/helpshift/common/exception/RootAPIException;->getServerStatusCode()I

    move-result v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/helpshift/common/AutoRetryFailedEventDM;->scheduleRetryTaskForEventType(Lcom/helpshift/common/AutoRetryFailedEventDM$EventType;I)V

    .line 81
    :cond_24
    iget-object v1, p0, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM$1;->this$0:Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;

    const/4 v2, 0x0

    # invokes: Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->callListener(Z)V
    invoke-static {v1, v2}, Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;->access$200(Lcom/helpshift/configuration/domainmodel/ConfigFetchDM;Z)V

    .line 82
    throw v0
.end method
