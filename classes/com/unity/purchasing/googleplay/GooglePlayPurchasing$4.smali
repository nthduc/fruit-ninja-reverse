.class Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$4;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlayPurchasing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->registerPurchasesUpdatedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V
    .registers 2

    .line 847
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$4;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 850
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing$4;->this$0:Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;

    # invokes: Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->pollForNewPurchases()V
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;->access$1200(Lcom/unity/purchasing/googleplay/GooglePlayPurchasing;)V

    return-void
.end method
