.class public Lcom/helpshift/views/HSTextInputLayout;
.super Lcom/google/android/material/textfield/TextInputLayout;
.source "HSTextInputLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0}, Lcom/helpshift/views/HSTextInputLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/helpshift/views/HSTextInputLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0}, Lcom/helpshift/views/HSTextInputLayout;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/helpshift/views/FontApplier;->apply(Landroid/view/View;)V

    return-void
.end method
