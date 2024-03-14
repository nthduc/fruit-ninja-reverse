.class public final Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConversationFooterViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/helpshift/support/widget/CSATView$CSATListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field final conversationFooter:Landroid/view/View;

.field final csatView:Lcom/helpshift/support/widget/CSATView;

.field final footerMessage:Landroid/widget/TextView;

.field final newConversationBox:Landroid/widget/LinearLayout;

.field final newConversationButton:Landroid/widget/Button;

.field final newConversationReason:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;Landroid/view/View;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    .line 156
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 157
    iput-object p2, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->conversationFooter:Landroid/view/View;

    .line 158
    sget p1, Lcom/helpshift/R$id;->footer_message:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->footerMessage:Landroid/widget/TextView;

    .line 159
    sget p1, Lcom/helpshift/R$id;->hs__new_conversation:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationBox:Landroid/widget/LinearLayout;

    .line 160
    sget p1, Lcom/helpshift/R$id;->hs__new_conversation_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationButton:Landroid/widget/Button;

    .line 161
    sget p1, Lcom/helpshift/R$id;->csat_view_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpshift/support/widget/CSATView;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->csatView:Lcom/helpshift/support/widget/CSATView;

    .line 162
    sget p1, Lcom/helpshift/R$id;->hs__new_conversation_footer_reason:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationReason:Landroid/widget/TextView;

    .line 163
    invoke-direct {p0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->setBorderToNewConversationButton()V

    return-void
.end method

.method private setBorderToNewConversationButton()V
    .registers 8

    .line 195
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    .line 196
    # getter for: Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpshift/R$drawable;->hs__button_with_border:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 197
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    # getter for: Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 199
    iget-object v1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    # getter for: Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/helpshift/R$attr;->colorAccent:I

    invoke-static {v1, v3}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 201
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    # getter for: Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpshift/R$attr;->hs__footerPromptBackground:I

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 203
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    # getter for: Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v5, v0

    .line 204
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    # getter for: Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->access$000(Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v6, v0

    .line 205
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, v0

    move v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 207
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_68

    .line 208
    iget-object v1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6d

    .line 211
    :cond_68
    iget-object v1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->newConversationButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6d
    return-void
.end method


# virtual methods
.method public onCSATSurveyCancelled()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object v0, v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    if-eqz v0, :cond_d

    .line 183
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object v0, v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;->onCSATSurveyCancelled()V

    :cond_d
    return-void
.end method

.method public onCSATSurveyStarted()V
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object v0, v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    if-eqz v0, :cond_d

    .line 176
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object v0, v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    invoke-interface {v0}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;->onCSATSurveyStarted()V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 168
    iget-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    if-eqz p1, :cond_d

    .line 169
    iget-object p1, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object p1, p1, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    invoke-interface {p1}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;->onStartNewConversationButtonClick()V

    :cond_d
    return-void
.end method

.method public sendCSATSurvey(ILjava/lang/String;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object v0, v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    if-eqz v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ViewHolder;->this$0:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;

    iget-object v0, v0, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder;->footerClickListener:Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;

    invoke-interface {v0, p1, p2}, Lcom/helpshift/support/conversations/messages/ConversationFooterViewBinder$ConversationFooterClickListener;->onCSATSurveySubmitted(ILjava/lang/String;)V

    :cond_d
    return-void
.end method
