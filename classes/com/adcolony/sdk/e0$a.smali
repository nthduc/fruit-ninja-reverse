.class Lcom/adcolony/sdk/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/e0;->a(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/e0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/e0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/e0$a;->a:Lcom/adcolony/sdk/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/e0$a;->a:Lcom/adcolony/sdk/e0;

    invoke-virtual {v0}, Lcom/adcolony/sdk/e0;->a()V

    return-void
.end method
