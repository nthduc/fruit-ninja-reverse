.class public final Lcom/google/android/gms/auth/api/identity/SignInOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/SignInOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzau:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SignInOptions;->zzau:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/google/android/gms/auth/api/identity/SignInOptions$Builder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/SignInOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/identity/SignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/identity/zzh;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    instance-of p1, p1, Lcom/google/android/gms/auth/api/identity/SignInOptions;

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/auth/api/identity/SignInOptions;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .registers 4

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SignInOptions;->zzau:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SignInOptions;->zzau:Ljava/lang/String;

    return-object v0
.end method
