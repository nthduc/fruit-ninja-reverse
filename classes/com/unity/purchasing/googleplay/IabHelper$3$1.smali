.class Lcom/unity/purchasing/googleplay/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/IabHelper$3;->workWith(Lcom/android/vending/billing/IInAppBillingService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity/purchasing/googleplay/IabHelper$3;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/IabHelper$3;Landroid/app/PendingIntent;)V
    .registers 3

    .line 646
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/IabHelper$3$1;->this$1:Lcom/unity/purchasing/googleplay/IabHelper$3;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/IabHelper$3$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 649
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/IabHelper$3$1;->this$1:Lcom/unity/purchasing/googleplay/IabHelper$3;

    iget-object v0, v0, Lcom/unity/purchasing/googleplay/IabHelper$3;->val$act:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->create(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamApi;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/IabHelper$3$1;->this$1:Lcom/unity/purchasing/googleplay/IabHelper$3;

    iget-object v1, v1, Lcom/unity/purchasing/googleplay/IabHelper$3;->val$act:Landroid/app/Activity;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/IabHelper$3$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/unity/purchasing/googleplay/IabHelper$3$1;->this$1:Lcom/unity/purchasing/googleplay/IabHelper$3;

    iget v3, v3, Lcom/unity/purchasing/googleplay/IabHelper$3;->val$requestCode:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVrForResult(Landroid/app/Activity;Landroid/app/PendingIntent;I)V

    .line 651
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->close()V

    return-void
.end method