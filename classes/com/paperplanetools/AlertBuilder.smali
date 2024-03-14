.class public Lcom/paperplanetools/AlertBuilder;
.super Ljava/lang/Object;
.source "AlertBuilder.java"


# instance fields
.field public buttons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cancelable:Z

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/paperplanetools/AlertBuilder;->title:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/paperplanetools/AlertBuilder;->message:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/paperplanetools/AlertBuilder;->cancelable:Z

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/paperplanetools/AlertBuilder;->buttons:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public create(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 8

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/paperplanetools/AlertBuilder;->title:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    :cond_10
    iget-object v0, p0, Lcom/paperplanetools/AlertBuilder;->message:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 31
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    :cond_17
    iget-boolean v0, p0, Lcom/paperplanetools/AlertBuilder;->cancelable:Z

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 36
    iget-object v0, p0, Lcom/paperplanetools/AlertBuilder;->buttons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v3, Lcom/paperplanetools/AlertBuilder$1;

    invoke-direct {v3, p0, p2, p3}, Lcom/paperplanetools/AlertBuilder$1;-><init>(Lcom/paperplanetools/AlertBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_26

    :cond_4b
    return-object p1
.end method
