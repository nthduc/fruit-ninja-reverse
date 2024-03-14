.class Lcom/adcolony/sdk/j0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/j0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/j0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/j0$j;->a:Lcom/adcolony/sdk/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/j0$j;->a:Lcom/adcolony/sdk/j0;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/j0;->c(Lcom/adcolony/sdk/x;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/j0$j;->a:Lcom/adcolony/sdk/j0;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/j0;->i(Lcom/adcolony/sdk/x;)V

    :cond_d
    return-void
.end method
