.class public Lcom/helpshift/support/util/SnackbarUtil;
.super Ljava/lang/Object;
.source "SnackbarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/util/SnackbarUtil$SnackbarErrorCodes;
    }
.end annotation


# static fields
.field private static viewToSnackbarMapping:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/SnackbarUtil;->viewToSnackbarMapping:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getErrorMessage(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x66

    if-ne p0, v0, :cond_7

    .line 76
    sget p0, Lcom/helpshift/R$string;->hs__invalid_faq_publish_id_error:I

    goto :goto_10

    :cond_7
    const/16 v0, 0x67

    if-ne p0, v0, :cond_e

    .line 79
    sget p0, Lcom/helpshift/R$string;->hs__invalid_section_publish_id_error:I

    goto :goto_10

    .line 82
    :cond_e
    sget p0, Lcom/helpshift/R$string;->hs__network_error_msg:I

    .line 84
    :goto_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getErrorMessage(Lcom/helpshift/common/exception/ExceptionType;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 95
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->NO_CONNECTION:Lcom/helpshift/common/exception/NetworkException;

    if-ne p0, v0, :cond_7

    .line 96
    sget p0, Lcom/helpshift/R$string;->hs__network_unavailable_msg:I

    goto :goto_3a

    .line 98
    :cond_7
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->UNKNOWN_HOST:Lcom/helpshift/common/exception/NetworkException;

    if-ne p0, v0, :cond_e

    .line 99
    sget p0, Lcom/helpshift/R$string;->hs__could_not_reach_support_msg:I

    goto :goto_3a

    .line 101
    :cond_e
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->SSL_PEER_UNVERIFIED:Lcom/helpshift/common/exception/NetworkException;

    if-ne p0, v0, :cond_15

    .line 102
    sget p0, Lcom/helpshift/R$string;->hs__ssl_peer_unverified_error:I

    goto :goto_3a

    .line 104
    :cond_15
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->SSL_HANDSHAKE:Lcom/helpshift/common/exception/NetworkException;

    if-ne p0, v0, :cond_1c

    .line 105
    sget p0, Lcom/helpshift/R$string;->hs__ssl_handshake_error:I

    goto :goto_3a

    .line 107
    :cond_1c
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->CONTENT_NOT_FOUND:Lcom/helpshift/common/exception/NetworkException;

    if-ne p0, v0, :cond_23

    .line 108
    sget p0, Lcom/helpshift/R$string;->hs__data_not_found_msg:I

    goto :goto_3a

    .line 110
    :cond_23
    sget-object v0, Lcom/helpshift/common/exception/NetworkException;->SCREENSHOT_UPLOAD_ERROR:Lcom/helpshift/common/exception/NetworkException;

    if-ne p0, v0, :cond_2a

    .line 111
    sget p0, Lcom/helpshift/R$string;->hs__screenshot_upload_error_msg:I

    goto :goto_3a

    .line 113
    :cond_2a
    sget-object v0, Lcom/helpshift/common/exception/PlatformException;->NO_APPS_FOR_OPENING_ATTACHMENT:Lcom/helpshift/common/exception/PlatformException;

    if-ne p0, v0, :cond_31

    .line 114
    sget p0, Lcom/helpshift/R$string;->hs__could_not_open_attachment_msg:I

    goto :goto_3a

    .line 116
    :cond_31
    sget-object v0, Lcom/helpshift/common/exception/PlatformException;->FILE_NOT_FOUND:Lcom/helpshift/common/exception/PlatformException;

    if-ne p0, v0, :cond_38

    .line 117
    sget p0, Lcom/helpshift/R$string;->hs__file_not_found_msg:I

    goto :goto_3a

    .line 120
    :cond_38
    sget p0, Lcom/helpshift/R$string;->hs__network_error_msg:I

    .line 122
    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideSnackbar(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 130
    :cond_3
    sget-object v0, Lcom/helpshift/support/util/SnackbarUtil;->viewToSnackbarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_16

    .line 131
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 132
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 134
    :cond_16
    sget-object v0, Lcom/helpshift/support/util/SnackbarUtil;->viewToSnackbarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static showErrorSnackbar(ILandroid/view/View;)V
    .registers 4

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_b

    .line 67
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    :goto_f
    invoke-static {p0, v1}, Lcom/helpshift/support/util/SnackbarUtil;->getErrorMessage(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p1, p0, v0}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showSnackbar(Landroid/view/View;II)V
    .registers 4

    if-eqz p0, :cond_b

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_17

    .line 56
    :cond_b
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 59
    :goto_17
    invoke-static {p0, p1, p2}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showSnackbar(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .registers 4

    if-eqz p1, :cond_29

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    :cond_9
    if-eqz p0, :cond_18

    .line 32
    invoke-static {p0, p1, p2}, Lcom/helpshift/views/HSSnackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 34
    sget-object p2, Lcom/helpshift/support/util/SnackbarUtil;->viewToSnackbarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_18
    const/4 p0, -0x1

    if-ne p2, p0, :cond_1d

    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x1

    .line 44
    :goto_1e
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p0}, Lcom/helpshift/views/HSToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_29
    :goto_29
    return-void
.end method

.method public static showSnackbar(Lcom/helpshift/common/exception/ExceptionType;Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_7

    .line 88
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    :goto_b
    invoke-static {p0, v0}, Lcom/helpshift/support/util/SnackbarUtil;->getErrorMessage(Lcom/helpshift/common/exception/ExceptionType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 90
    invoke-static {p1, p0, v0}, Lcom/helpshift/support/util/SnackbarUtil;->showSnackbar(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void
.end method
