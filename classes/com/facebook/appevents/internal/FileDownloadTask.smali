.class public Lcom/facebook/appevents/internal/FileDownloadTask;
.super Landroid/os/AsyncTask;
.source "FileDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/FileDownloadTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private destFile:Ljava/io/File;

.field private onSuccess:Lcom/facebook/appevents/internal/FileDownloadTask$Callback;

.field private uriStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->uriStr:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->destFile:Ljava/io/File;

    .line 40
    iput-object p3, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->onSuccess:Lcom/facebook/appevents/internal/FileDownloadTask$Callback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return-object v0

    .line 46
    :cond_8
    :try_start_8
    new-instance p1, Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->uriStr:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 50
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    new-array p1, v1, [B

    .line 53
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 54
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 56
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->destFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 58
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 59
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    const/4 p1, 0x1

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_42} :catch_45
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    goto :goto_4b

    :catch_45
    const/4 p1, 0x0

    .line 64
    :try_start_46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4a} :catch_43

    return-object p1

    :goto_4b
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 31
    :cond_8
    :try_start_8
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/internal/FileDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 69
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 70
    iget-object p1, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->onSuccess:Lcom/facebook/appevents/internal/FileDownloadTask$Callback;

    iget-object v0, p0, Lcom/facebook/appevents/internal/FileDownloadTask;->destFile:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/facebook/appevents/internal/FileDownloadTask$Callback;->onComplete(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    .line 72
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 31
    :cond_7
    :try_start_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/internal/FileDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
