.class Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$13;
.super Ljava/lang/Object;
.source "SmartIntentRendererImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->showReplyValidationFailedError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)V
    .registers 2

    .line 810
    iput-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$13;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 813
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
