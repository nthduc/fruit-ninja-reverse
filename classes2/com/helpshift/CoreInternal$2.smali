.class final Lcom/helpshift/CoreInternal$2;
.super Ljava/lang/Object;
.source "CoreInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/CoreInternal;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$trimApiKey:Ljava/lang/String;

.field final synthetic val$trimAppId:Ljava/lang/String;

.field final synthetic val$trimDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 80
    iput-object p1, p0, Lcom/helpshift/CoreInternal$2;->val$application:Landroid/app/Application;

    iput-object p2, p0, Lcom/helpshift/CoreInternal$2;->val$trimApiKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/CoreInternal$2;->val$trimDomain:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/CoreInternal$2;->val$trimAppId:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/CoreInternal$2;->val$config:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 84
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->installCallSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 87
    :cond_9
    sget-object v1, Lcom/helpshift/CoreInternal;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    iget-object v2, p0, Lcom/helpshift/CoreInternal$2;->val$application:Landroid/app/Application;

    iget-object v3, p0, Lcom/helpshift/CoreInternal$2;->val$trimApiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/CoreInternal$2;->val$trimDomain:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/CoreInternal$2;->val$trimAppId:Ljava/lang/String;

    iget-object v6, p0, Lcom/helpshift/CoreInternal$2;->val$config:Ljava/util/Map;

    invoke-interface/range {v1 .. v6}, Lcom/helpshift/Core$ApiProvider;->_preInstall(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
