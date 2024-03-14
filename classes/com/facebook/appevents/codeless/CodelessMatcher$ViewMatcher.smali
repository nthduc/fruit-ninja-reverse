.class public Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMatcher"
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private eventBindings:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private listenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->handler:Landroid/os/Handler;

    .line 227
    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    .line 228
    iput-object p4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->handler:Landroid/os/Handler;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .registers 7

    if-nez p3, :cond_3

    return-void

    .line 455
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 460
    :cond_a
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->findRCTRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 461
    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    return-void

    .line 466
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.react"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return-void

    .line 469
    :cond_2b
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_33

    .line 471
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachOnClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    goto :goto_43

    .line 472
    :cond_33
    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_43

    .line 474
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachOnItemClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3b

    goto :goto_43

    :catch_3b
    move-exception p1

    .line 477
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_43
    :goto_43
    return-void
.end method

.method private attachOnClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .registers 7

    .line 483
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 487
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 489
    instance-of v2, v1, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    if-eqz v2, :cond_1d

    .line 491
    check-cast v1, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    .line 494
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;->getSupportCodelessLogging()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 495
    :goto_1e
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    if-nez v1, :cond_34

    .line 497
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->getOnClickListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    move-result-object p2

    .line 498
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method private attachOnItemClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .registers 7

    .line 505
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    if-nez v0, :cond_9

    return-void

    .line 509
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .line 511
    instance-of v2, v1, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    if-eqz v2, :cond_1f

    .line 513
    check-cast v1, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    .line 516
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;->getSupportCodelessLogging()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 517
    :goto_20
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    if-nez v1, :cond_36

    .line 519
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->getOnItemClickListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    move-result-object p2

    .line 520
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 521
    iget-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_36
    return-void
.end method

.method private attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .registers 7

    .line 527
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 531
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    .line 533
    instance-of v2, v1, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    if-eqz v2, :cond_1d

    .line 535
    check-cast v1, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    .line 538
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->getSupportCodelessLogging()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 539
    :goto_1e
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    if-nez v1, :cond_34

    .line 541
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;->getOnTouchListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    move-result-object p2

    .line 542
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    iget-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method public static findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_20

    return-object v1

    .line 313
    :cond_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt p3, v2, :cond_30

    .line 315
    new-instance p4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {p4, p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 317
    :cond_30
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/codeless/internal/PathComponent;

    .line 318
    iget-object v4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 320
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_6c

    .line 321
    check-cast p1, Landroid/view/ViewGroup;

    .line 322
    invoke-static {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_53
    if-ge p5, p4, :cond_6c

    .line 325
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, p5

    move-object v7, v0

    .line 327
    invoke-static/range {v2 .. v7}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 328
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_53

    :cond_6c
    return-object v1

    .line 333
    :cond_6d
    iget-object v4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7e

    .line 335
    new-instance p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {p0, p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 340
    :cond_7e
    invoke-static {p1, v2, p4}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z

    move-result p4

    if-nez p4, :cond_85

    return-object v1

    .line 345
    :cond_85
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_95

    .line 346
    new-instance p4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {p4, p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_95
    :goto_95
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_bd

    .line 351
    check-cast p1, Landroid/view/ViewGroup;

    .line 352
    invoke-static {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_a4
    if-ge p5, p4, :cond_bd

    .line 355
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, p5

    move-object v7, v0

    .line 357
    invoke-static/range {v2 .. v7}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 358
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_a4

    :cond_bd
    return-object v1
.end method

.method private static findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1c

    .line 441
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 442
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_19

    .line 443
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method private static isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z
    .registers 8

    .line 367
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    if-eq p2, v0, :cond_b

    return v1

    .line 371
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_44

    .line 372
    iget-object p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v2, ".*android\\..*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 373
    iget-object p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 374
    array-length v2, p2

    if-lez v2, :cond_43

    .line 375
    array-length v2, p2

    sub-int/2addr v2, v0

    aget-object p2, p2, v2

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    :cond_43
    return v1

    .line 387
    :cond_44
    iget p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v2, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v2}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v2

    and-int/2addr p2, v2

    if-lez p2, :cond_58

    .line 388
    iget p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->id:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq p2, v2, :cond_58

    return v1

    .line 393
    :cond_58
    iget p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v2, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v2}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v2

    and-int/2addr p2, v2

    const-string v2, ""

    if-lez p2, :cond_80

    .line 394
    iget-object p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->text:Ljava/lang/String;

    .line 395
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v3}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    return v1

    .line 403
    :cond_80
    iget p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr p2, v3

    if-lez p2, :cond_b2

    .line 404
    iget-object p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->description:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_95

    move-object v3, v2

    goto :goto_9d

    .line 408
    :cond_95
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 409
    :goto_9d
    invoke-static {v3}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b2

    return v1

    .line 415
    :cond_b2
    iget p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr p2, v3

    if-lez p2, :cond_d8

    .line 416
    iget-object p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->hint:Ljava/lang/String;

    .line 417
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-static {v3}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d8

    return v1

    .line 425
    :cond_d8
    iget p2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr p2, v3

    if-lez p2, :cond_10a

    .line 426
    iget-object p1, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->tag:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_ed

    move-object p0, v2

    goto :goto_f5

    :cond_ed
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 428
    :goto_f5
    invoke-static {p0}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 429
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10a

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10a

    return v1

    :cond_10a
    return v0
.end method

.method private startMatch()V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 270
    :goto_d
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 271
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 272
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2b
    return-void
.end method


# virtual methods
.method public findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V
    .registers 10

    if-eqz p1, :cond_47

    if-nez p2, :cond_5

    goto :goto_47

    .line 282
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 283
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 287
    :cond_1c
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewPath()Ljava/util/List;

    move-result-object v3

    .line 289
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_29

    return-void

    :cond_29
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 293
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 294
    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 296
    invoke-direct {p0, v1, p2, p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    goto :goto_37

    :cond_47
    :goto_47
    return-void
.end method

.method public onGlobalLayout()V
    .registers 1

    .line 260
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    return-void
.end method

.method public onScrollChanged()V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    return-void
.end method

.method public run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 235
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 237
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_44

    .line 241
    :cond_18
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getEventBindings()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    .line 243
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    if-eqz v0, :cond_44

    .line 244
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_31

    return-void

    .line 248
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 250
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 251
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 254
    :cond_41
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    return-void

    :catch_45
    move-exception v0

    .line 256
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
