.class Landroidx/recyclerview/widget/AsyncListDiffer$1$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;)V
    .registers 2

    .line 246
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 4

    .line 270
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 271
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 273
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    if-nez p1, :cond_29

    if-nez p2, :cond_29

    const/4 p1, 0x1

    return p1

    .line 282
    :cond_29
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public areItemsTheSame(II)Z
    .registers 4

    .line 259
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 260
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 262
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    if-nez p1, :cond_29

    if-nez p2, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 288
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 291
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 297
    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getNewListSize()I
    .registers 2

    .line 254
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .registers 2

    .line 249
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
