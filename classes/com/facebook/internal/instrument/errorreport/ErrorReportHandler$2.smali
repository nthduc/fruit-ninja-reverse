.class final Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$2;
.super Ljava/lang/Object;
.source "ErrorReportHandler.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->sendErrorReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$validReports:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$2;->val$validReports:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 3

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    .line 94
    :goto_13
    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$2;->val$validReports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_29

    .line 95
    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$2;->val$validReports:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-virtual {v0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->clear()V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_29

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :catch_29
    :cond_29
    return-void
.end method
