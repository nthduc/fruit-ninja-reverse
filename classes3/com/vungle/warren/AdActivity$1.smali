.class Lcom/vungle/warren/AdActivity$1;
.super Ljava/lang/Object;
.source "AdActivity.java"

# interfaces
.implements Lcom/vungle/warren/ui/CloseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdActivity;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/vungle/warren/AdActivity$1;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/vungle/warren/AdActivity$1;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-virtual {v0}, Lcom/vungle/warren/AdActivity;->finish()V

    return-void
.end method
