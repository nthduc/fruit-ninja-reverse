.class Lcom/adcolony/sdk/d$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/d$u;->a:Lcom/adcolony/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/d$u;->a:Lcom/adcolony/sdk/d;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/d;->g(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z

    return-void
.end method
