.class final Lcom/helpshift/CoreInternal$1;
.super Ljava/lang/Object;
.source "CoreInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/CoreInternal;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/helpshift/CoreInternal$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpshift/CoreInternal$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 60
    sget-object v0, Lcom/helpshift/CoreInternal;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    iget-object v1, p0, Lcom/helpshift/CoreInternal$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/CoreInternal$1;->val$email:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/Core$ApiProvider;->_setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
