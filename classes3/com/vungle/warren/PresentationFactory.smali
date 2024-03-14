.class public interface abstract Lcom/vungle/warren/PresentationFactory;
.super Ljava/lang/Object;
.source "PresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/PresentationFactory$ViewCallback;,
        Lcom/vungle/warren/PresentationFactory$FullScreenCallback;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getFullScreenPresentation(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/ui/OrientationDelegate;Landroid/os/Bundle;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/ui/view/FullAdWidget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/ui/state/OptionsState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/warren/ui/CloseDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/vungle/warren/ui/OrientationDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/vungle/warren/PresentationFactory$FullScreenCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getNativeViewPresentation(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$ViewCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/AdConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/ui/CloseDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/PresentationFactory$ViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveState(Landroid/os/Bundle;)V
.end method
