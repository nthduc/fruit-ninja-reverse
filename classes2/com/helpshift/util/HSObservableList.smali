.class public Lcom/helpshift/util/HSObservableList;
.super Ljava/util/ArrayList;
.source "HSObservableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private observer:Lcom/helpshift/util/HSListObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpshift/util/HSListObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    iget-object v1, p0, Lcom/helpshift/util/HSObservableList;->observer:Lcom/helpshift/util/HSListObserver;

    if-eqz v1, :cond_d

    .line 33
    invoke-interface {v1, p1}, Lcom/helpshift/util/HSListObserver;->add(Ljava/lang/Object;)V

    :cond_d
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    iget-object v1, p0, Lcom/helpshift/util/HSObservableList;->observer:Lcom/helpshift/util/HSListObserver;

    if-eqz v1, :cond_d

    .line 44
    invoke-interface {v1, p1}, Lcom/helpshift/util/HSListObserver;->addAll(Ljava/util/Collection;)V

    :cond_d
    return v0
.end method

.method public prependItems(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-super {p0, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public setAndNotifyObserver(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 58
    iget-object v0, p0, Lcom/helpshift/util/HSObservableList;->observer:Lcom/helpshift/util/HSListObserver;

    if-eqz v0, :cond_d

    .line 59
    invoke-interface {v0, p2}, Lcom/helpshift/util/HSListObserver;->update(Ljava/lang/Object;)V

    :cond_d
    return-object p1
.end method

.method public setObserver(Lcom/helpshift/util/HSListObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/util/HSListObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/helpshift/util/HSObservableList;->observer:Lcom/helpshift/util/HSListObserver;

    return-void
.end method
