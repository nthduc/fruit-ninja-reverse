.class public final Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RequestAppReviewMessageDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ViewHolder"
.end annotation


# instance fields
.field final avatarImageView:Lcom/helpshift/views/CircleImageView;

.field final message:Landroid/widget/TextView;

.field final messageContainer:Landroid/view/View;

.field final messageLayout:Landroid/view/View;

.field final reviewButton:Landroid/widget/Button;

.field final subText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder;Landroid/view/View;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    sget p1, Lcom/helpshift/R$id;->admin_review_message_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->messageLayout:Landroid/view/View;

    .line 79
    sget p1, Lcom/helpshift/R$id;->review_request_message:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->message:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/helpshift/R$id;->review_request_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->reviewButton:Landroid/widget/Button;

    .line 81
    sget p1, Lcom/helpshift/R$id;->review_request_date:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->subText:Landroid/widget/TextView;

    .line 82
    sget p1, Lcom/helpshift/R$id;->review_request_message_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->messageContainer:Landroid/view/View;

    .line 83
    sget p1, Lcom/helpshift/R$id;->avatar_image_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpshift/views/CircleImageView;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/RequestAppReviewMessageDataBinder$ViewHolder;->avatarImageView:Lcom/helpshift/views/CircleImageView;

    return-void
.end method
