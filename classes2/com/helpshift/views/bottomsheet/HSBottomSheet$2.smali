.class Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "HSBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/views/bottomsheet/HSBottomSheet;->attachBehaviourCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;


# direct methods
.method constructor <init>(Lcom/helpshift/views/bottomsheet/HSBottomSheet;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-boolean v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->enableDimAnimation:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->viewToDim:Landroid/view/View;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_12

    move v0, p2

    .line 187
    :cond_12
    iget-object v1, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget v1, v1, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->dimOpacity:F

    mul-float v0, v0, v1

    .line 188
    iget-object v1, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v1, v1, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->viewToDim:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-static {v2, v3, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    :cond_26
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 192
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 193
    invoke-virtual {v1, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_38

    :cond_48
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->viewToDim:Landroid/view/View;

    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    if-ne p2, v0, :cond_12

    .line 167
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->viewToDim:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1d

    :cond_12
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    .line 171
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->viewToDim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 175
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 176
    iget-object v0, p0, Lcom/helpshift/views/bottomsheet/HSBottomSheet$2;->this$0:Lcom/helpshift/views/bottomsheet/HSBottomSheet;

    iget-object v0, v0, Lcom/helpshift/views/bottomsheet/HSBottomSheet;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 177
    invoke-virtual {v1, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    goto :goto_2f

    :cond_3f
    return-void
.end method
