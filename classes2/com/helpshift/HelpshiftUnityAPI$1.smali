.class final Lcom/helpshift/HelpshiftUnityAPI$1;
.super Ljava/lang/Object;
.source "HelpshiftUnityAPI.java"

# interfaces
.implements Lcom/helpshift/support/AlertToRateAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HelpshiftUnityAPI;->showAlertToRateApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .registers 4

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const-string p1, ""

    goto :goto_19

    :cond_e
    const-string p1, "HS_RATE_ALERT_FAIL"

    goto :goto_19

    :cond_11
    const-string p1, "HS_RATE_ALERT_CLOSE"

    goto :goto_19

    :cond_14
    const-string p1, "HS_RATE_ALERT_FEEDBACK"

    goto :goto_19

    :cond_17
    const-string p1, "HS_RATE_ALERT_SUCCESS"

    .line 225
    :goto_19
    # invokes: Lcom/helpshift/HelpshiftUnityAPI;->getUnityMessageHandler()Ljava/lang/String;
    invoke-static {}, Lcom/helpshift/HelpshiftUnityAPI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alertToRateAppAction"

    .line 226
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/UnityUtils;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
