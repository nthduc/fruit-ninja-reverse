.class Lcom/adcolony/sdk/p$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/p;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/p;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/p$f;->a:Lcom/adcolony/sdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/p$f;->a:Lcom/adcolony/sdk/p;

    new-instance v1, Lcom/adcolony/sdk/p$f$a;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/p$f$a;-><init>(Lcom/adcolony/sdk/p$f;Lcom/adcolony/sdk/x;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/p;->a(Lcom/adcolony/sdk/p;Ljava/lang/Runnable;)V

    return-void
.end method
