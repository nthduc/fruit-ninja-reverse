.class public Lcom/helpshift/support/model/FuzzySearchToken;
.super Ljava/lang/Object;
.source "FuzzySearchToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final docId:Ljava/lang/String;

.field public final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/helpshift/support/model/FuzzySearchToken;->word:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/helpshift/support/model/FuzzySearchToken;->docId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 23
    instance-of v2, p1, Lcom/helpshift/support/model/FuzzySearchToken;

    if-nez v2, :cond_c

    goto :goto_32

    .line 26
    :cond_c
    check-cast p1, Lcom/helpshift/support/model/FuzzySearchToken;

    .line 27
    iget-object v2, p0, Lcom/helpshift/support/model/FuzzySearchToken;->word:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/helpshift/support/model/FuzzySearchToken;->word:Ljava/lang/String;

    if-eqz v2, :cond_20

    goto :goto_1f

    :cond_17
    iget-object v3, p1, Lcom/helpshift/support/model/FuzzySearchToken;->word:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :goto_1f
    return v1

    .line 30
    :cond_20
    iget-object v2, p0, Lcom/helpshift/support/model/FuzzySearchToken;->docId:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object p1, p1, Lcom/helpshift/support/model/FuzzySearchToken;->docId:Ljava/lang/String;

    if-nez p1, :cond_29

    goto :goto_31

    :cond_29
    const/4 v0, 0x0

    goto :goto_31

    :cond_2b
    iget-object p1, p1, Lcom/helpshift/support/model/FuzzySearchToken;->docId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_31
    return v0

    :cond_32
    :goto_32
    return v1
.end method
