.class final Lcom/helpshift/HelpshiftUnityAPI$3;
.super Ljava/lang/Object;
.source "HelpshiftUnityAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/HelpshiftUnityAPI;->requestUnreadMessagesCount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 272
    new-instance v0, Lcom/helpshift/HelpshiftUnityAPI$3$1;

    invoke-direct {v0, p0}, Lcom/helpshift/HelpshiftUnityAPI$3$1;-><init>(Lcom/helpshift/HelpshiftUnityAPI$3;)V

    .line 281
    new-instance v1, Lcom/helpshift/HelpshiftUnityAPI$3$2;

    invoke-direct {v1, p0}, Lcom/helpshift/HelpshiftUnityAPI$3$2;-><init>(Lcom/helpshift/HelpshiftUnityAPI$3;)V

    .line 292
    invoke-static {v0, v1}, Lcom/helpshift/support/Support;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method
