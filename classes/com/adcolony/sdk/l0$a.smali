.class Lcom/adcolony/sdk/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/l0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/l0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/l0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/l0$a;->a:Lcom/adcolony/sdk/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/l0$a;->a:Lcom/adcolony/sdk/l0;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/l0;->a(Lcom/adcolony/sdk/l0;Lcom/adcolony/sdk/x;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    iget-object p1, p0, Lcom/adcolony/sdk/l0$a;->a:Lcom/adcolony/sdk/l0;

    invoke-virtual {p1}, Lcom/adcolony/sdk/l0;->i()Z

    :cond_d
    return-void
.end method
