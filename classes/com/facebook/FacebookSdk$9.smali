.class final Lcom/facebook/FacebookSdk$9;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 694
    iput-object p1, p0, Lcom/facebook/FacebookSdk$9;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$9;->val$applicationId:Ljava/lang/String;

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

    .line 697
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/FacebookSdk$9;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/FacebookSdk$9;->val$applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 698
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
