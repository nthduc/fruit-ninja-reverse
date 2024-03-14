.class public Lcom/helpshift/widget/TextViewState;
.super Lcom/helpshift/widget/HSBaseObservable;
.source "TextViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/widget/TextViewState$TextViewStatesError;
    }
.end annotation


# static fields
.field public static final specialCharactersPattern:Ljava/util/regex/Pattern;


# instance fields
.field protected error:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

.field private isRequired:Z

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\W+"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/helpshift/widget/TextViewState;->specialCharactersPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/helpshift/widget/HSBaseObservable;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/helpshift/widget/TextViewState;->isRequired:Z

    return-void
.end method


# virtual methods
.method public getError()Lcom/helpshift/widget/TextViewState$TextViewStatesError;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/helpshift/widget/TextViewState;->error:Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/helpshift/widget/TextViewState;->text:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public isRequired()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/helpshift/widget/TextViewState;->isRequired:Z

    return v0
.end method

.method protected notifyInitialState()V
    .registers 1

    .line 31
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/TextViewState;->notifyChange(Ljava/lang/Object;)V

    return-void
.end method
