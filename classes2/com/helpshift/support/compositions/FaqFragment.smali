.class public Lcom/helpshift/support/compositions/FaqFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "FaqFragment.java"

# interfaces
.implements Lcom/helpshift/support/contracts/FaqFlowViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/compositions/FaqFragment$Failure;,
        Lcom/helpshift/support/compositions/FaqFragment$Success;,
        Lcom/helpshift/support/compositions/FaqFragment$FaqLoadingStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_FaqFragment"


# instance fields
.field private data:Lcom/helpshift/support/HSApiData;

.field private faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

.field isDataUpdatePending:Z

.field sectionsSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/compositions/FaqFragment;
    .registers 2

    .line 47
    new-instance v0, Lcom/helpshift/support/compositions/FaqFragment;

    invoke-direct {v0}, Lcom/helpshift/support/compositions/FaqFragment;-><init>()V

    .line 48
    invoke-virtual {v0, p0}, Lcom/helpshift/support/compositions/FaqFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private sendFaqLoadedEvent()V
    .registers 2

    .line 126
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroidx/fragment/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->onFaqsLoaded()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getFaqFlowListener()Lcom/helpshift/support/contracts/FaqFragmentListener;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/contracts/FaqFlowViewParent;

    invoke-interface {v0}, Lcom/helpshift/support/contracts/FaqFlowViewParent;->getFaqFlowListener()Lcom/helpshift/support/contracts/FaqFragmentListener;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 188
    :try_start_0
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_b

    .line 195
    new-instance v0, Lcom/helpshift/support/HSApiData;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Helpshift_FaqFragment"

    const-string v1, "Caught exception in FaqFragment.onAttach()"

    .line 191
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 153
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v0, "withTagsMatching"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/helpshift/support/FaqTagFilter;

    iput-object p1, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    :cond_13
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 163
    sget p3, Lcom/helpshift/R$layout;->hs__faq_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 181
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/support/util/SnackbarUtil;->hideSnackbar(Landroid/view/View;)V

    .line 182
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 168
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 169
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 173
    :cond_14
    iget-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v1, Lcom/helpshift/support/compositions/FaqFragment$Success;

    invoke-direct {v1, p0}, Lcom/helpshift/support/compositions/FaqFragment$Success;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    new-instance v2, Lcom/helpshift/support/compositions/FaqFragment$Failure;

    invoke-direct {v2, p0}, Lcom/helpshift/support/compositions/FaqFragment$Failure;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    iget-object v3, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    .line 174
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_38

    .line 175
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object v0

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->SUPPORT_LAUNCH:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {v0, v1}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;)V

    :cond_38
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 200
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    return-void
.end method

.method removeEmptySections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Section;

    .line 219
    iget-object v2, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/support/HSApiData;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2d
    return-object v0
.end method

.method public retryGetSections()V
    .registers 5

    .line 210
    iget v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v1, Lcom/helpshift/support/compositions/FaqFragment$Success;

    invoke-direct {v1, p0}, Lcom/helpshift/support/compositions/FaqFragment$Success;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    new-instance v2, Lcom/helpshift/support/compositions/FaqFragment$Failure;

    invoke-direct {v2, p0}, Lcom/helpshift/support/compositions/FaqFragment$Failure;-><init>(Lcom/helpshift/support/compositions/FaqFragment;)V

    iget-object v3, p0, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/support/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    return-void
.end method

.method public shouldRefreshMenu()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateFaqLoadingUI(I)V
    .registers 5

    .line 133
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v0, :cond_f

    .line 136
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/fragments/SupportFragment;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_26

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1c

    .line 140
    invoke-virtual {v0, v2}, Lcom/helpshift/support/fragments/FaqFlowFragment;->showVerticalDivider(Z)V

    .line 141
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI()V

    goto :goto_23

    :cond_1c
    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v2}, Lcom/helpshift/support/fragments/FaqFlowFragment;->showVerticalDivider(Z)V

    .line 145
    invoke-virtual {v0, v2}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI(Z)V

    .line 147
    :goto_23
    invoke-virtual {v1, p1}, Lcom/helpshift/support/fragments/SupportFragment;->updateFaqLoadingUI(I)V

    :cond_26
    return-void
.end method

.method updateFragment(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/support/compositions/FaqFragment;",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/helpshift/support/compositions/FaqFragment;->sendFaqLoadedEvent()V

    .line 66
    invoke-virtual {p1}, Lcom/helpshift/support/compositions/FaqFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/helpshift/R$id;->faq_fragment_container:I

    .line 67
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 68
    iget-boolean v0, p0, Lcom/helpshift/support/compositions/FaqFragment;->isDataUpdatePending:Z

    if-nez v0, :cond_14

    return-void

    .line 72
    :cond_14
    iget-object v0, p1, Lcom/helpshift/support/compositions/FaqFragment;->data:Lcom/helpshift/support/HSApiData;

    iget-object v1, p1, Lcom/helpshift/support/compositions/FaqFragment;->faqTagFilter:Lcom/helpshift/support/FaqTagFilter;

    invoke-virtual {v0, p2, v1}, Lcom/helpshift/support/HSApiData;->getPopulatedSections(Ljava/util/ArrayList;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "withTagsMatching"

    if-ne v0, v1, :cond_5a

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/support/Section;

    invoke-virtual {p2}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sectionPublishId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 78
    invoke-static {v0}, Lcom/helpshift/support/fragments/QuestionListFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/QuestionListFragment;

    move-result-object v6

    .line 80
    :try_start_49
    invoke-virtual {p1}, Lcom/helpshift/support/compositions/FaqFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    sget v5, Lcom/helpshift/R$id;->faq_fragment_container:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/helpshift/support/compositions/FaqFragment;->isDataUpdatePending:Z

    invoke-static/range {v4 .. v10}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 87
    iput-boolean v2, p0, Lcom/helpshift/support/compositions/FaqFragment;->isDataUpdatePending:Z
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_59} :catch_83

    goto :goto_83

    .line 99
    :cond_5a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sections"

    .line 100
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    invoke-virtual {p0}, Lcom/helpshift/support/compositions/FaqFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 103
    invoke-static {v0}, Lcom/helpshift/support/fragments/SectionListFragment;->newInstance(Landroid/os/Bundle;)Lcom/helpshift/support/fragments/SectionListFragment;

    move-result-object v6

    .line 105
    :try_start_73
    invoke-virtual {p1}, Lcom/helpshift/support/compositions/FaqFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    sget v5, Lcom/helpshift/R$id;->faq_fragment_container:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/helpshift/support/compositions/FaqFragment;->isDataUpdatePending:Z

    invoke-static/range {v4 .. v10}, Lcom/helpshift/support/util/FragmentUtil;->startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 112
    iput-boolean v2, p0, Lcom/helpshift/support/compositions/FaqFragment;->isDataUpdatePending:Z
    :try_end_83
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_83} :catch_83

    :catch_83
    :goto_83
    return-void
.end method
