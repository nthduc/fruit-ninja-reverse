.class Lcom/facebook/appevents/aam/MetadataViewObserver$1;
.super Ljava/lang/Object;
.source "MetadataViewObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/aam/MetadataViewObserver;->process(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/aam/MetadataViewObserver;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/aam/MetadataViewObserver;Landroid/view/View;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$1;->this$0:Lcom/facebook/appevents/aam/MetadataViewObserver;

    iput-object p2, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 126
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$1;->val$view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_e

    return-void

    .line 129
    :cond_e
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$1;->this$0:Lcom/facebook/appevents/aam/MetadataViewObserver;

    iget-object v1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/appevents/aam/MetadataViewObserver;->access$000(Lcom/facebook/appevents/aam/MetadataViewObserver;Landroid/view/View;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 130
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
