.class final Lcom/facebook/unity/FB$7;
.super Ljava/lang/Object;
.source "FB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FB;->ActivateApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$unityActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/facebook/unity/FB$7;->val$unityActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/facebook/unity/FB$7;->val$unityActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V

    .line 644
    iget-object v0, p0, Lcom/facebook/unity/FB$7;->val$unityActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method
