.class public interface abstract Lcom/helpshift/conversation/smartintent/SmartIntentDMCallback;
.super Ljava/lang/Object;
.source "SmartIntentDMCallback.java"


# virtual methods
.method public abstract onTreeAvailable(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;)V
    .param p1    # Lcom/helpshift/account/domainmodel/UserDM;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTreeUnAvailable(Lcom/helpshift/account/domainmodel/UserDM;)V
    .param p1    # Lcom/helpshift/account/domainmodel/UserDM;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
