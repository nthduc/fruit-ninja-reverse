.class public Lcom/helpshift/support/util/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaqFlowFragment(Landroidx/fragment/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;
    .registers 4

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 99
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_20

    .line 100
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1d

    .line 101
    instance-of v2, v1, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v2, :cond_1d

    .line 103
    check-cast v1, Lcom/helpshift/support/fragments/FaqFlowFragment;

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFaqFragment(Landroidx/fragment/app/FragmentManager;)Lcom/helpshift/support/compositions/FaqFragment;
    .registers 2

    .line 111
    const-class v0, Lcom/helpshift/support/compositions/FaqFragment;

    invoke-static {p0, v0}, Lcom/helpshift/support/util/FragmentUtil;->getFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/compositions/FaqFragment;

    return-object p0
.end method

.method private static getFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenshotPreviewFragment(Landroidx/fragment/app/FragmentManager;)Lcom/helpshift/support/fragments/AttachmentPreviewFragment;
    .registers 2

    .line 93
    const-class v0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment;

    invoke-static {p0, v0}, Lcom/helpshift/support/util/FragmentUtil;->getFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/fragments/AttachmentPreviewFragment;

    return-object p0
.end method

.method public static getSearchFragment(Landroidx/fragment/app/FragmentManager;)Lcom/helpshift/support/fragments/SearchFragment;
    .registers 2

    .line 115
    const-class v0, Lcom/helpshift/support/fragments/SearchFragment;

    invoke-static {p0, v0}, Lcom/helpshift/support/util/FragmentUtil;->getFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/fragments/SearchFragment;

    return-object p0
.end method

.method public static getSingleQuestionFragment(Landroidx/fragment/app/FragmentManager;)Lcom/helpshift/support/fragments/SingleQuestionFragment;
    .registers 2

    .line 89
    const-class v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    invoke-static {p0, v0}, Lcom/helpshift/support/util/FragmentUtil;->getFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    return-object p0
.end method

.method public static getSupportFragment(Landroidx/fragment/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;
    .registers 2

    .line 119
    instance-of v0, p0, Lcom/helpshift/support/fragments/SupportFragment;

    if-eqz v0, :cond_7

    .line 120
    check-cast p0, Lcom/helpshift/support/fragments/SupportFragment;

    return-object p0

    .line 123
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_f
    instance-of v0, p0, Lcom/helpshift/support/fragments/SupportFragment;

    if-eqz v0, :cond_16

    .line 130
    check-cast p0, Lcom/helpshift/support/fragments/SupportFragment;

    return-object p0

    .line 133
    :cond_16
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroidx/fragment/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 186
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method private static loadFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 11

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 145
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 152
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v2

    iget-object v2, v2, Lcom/helpshift/model/InfoModelFactory;->appInfoModel:Lcom/helpshift/model/AppInfoModel;

    iget-object v2, v2, Lcom/helpshift/model/AppInfoModel;->disableAnimations:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    if-eqz v1, :cond_27

    if-eqz p6, :cond_1b

    goto :goto_27

    .line 157
    :cond_1b
    sget p6, Lcom/helpshift/R$anim;->hs__slide_in_from_right:I

    sget v1, Lcom/helpshift/R$anim;->hs__slide_out_to_left:I

    sget v2, Lcom/helpshift/R$anim;->hs__slide_in_from_left:I

    sget v3, Lcom/helpshift/R$anim;->hs__slide_out_to_right:I

    invoke-virtual {v0, p6, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2b

    :cond_27
    :goto_27
    const/4 p6, 0x0

    .line 154
    invoke-virtual {v0, p6, p6, p6, p6}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 164
    :cond_2b
    :goto_2b
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 165
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 166
    invoke-virtual {v0, p4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 169
    :cond_37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    if-eqz p5, :cond_3f

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_3f
    return-void
.end method

.method public static popBackStack(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method public static popBackStackImmediate(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public static removeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 2

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static startFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7

    .line 28
    invoke-static/range {p0 .. p6}, Lcom/helpshift/support/util/FragmentUtil;->loadFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static startFragmentWithBackStack(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .registers 13

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    .line 42
    invoke-static/range {v1 .. v7}, Lcom/helpshift/support/util/FragmentUtil;->loadFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static startFragmentWithoutBackStack(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/util/FragmentUtil;->loadFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
