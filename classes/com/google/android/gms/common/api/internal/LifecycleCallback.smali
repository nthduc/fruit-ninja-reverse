.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field protected final mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    return-void
.end method

.method private static getChimeraLifecycleFragmentImpl(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method not available in SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getFragment(Landroid/content/ContextWrapper;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected static getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->asFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzc;->zza(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzc;

    move-result-object p0

    return-object p0

    .line 4
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->asActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzb;->zza(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zzb;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    return-void
.end method
