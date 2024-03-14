.class public Lcom/google/firebase/auth/ActionCodeUrl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/firebase_auth/zzbl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzbl<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbk;-><init>()V

    const/4 v1, 0x2

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "recoverEmail"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resetPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;

    move-result-object v0

    const/4 v1, 0x4

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "signIn"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;

    move-result-object v0

    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verifyEmail"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;

    move-result-object v0

    const/4 v1, 0x5

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verifyBeforeChangeEmail"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;

    move-result-object v0

    const/4 v1, 0x6

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "revertSecondFactorAddition"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzbk;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbk;->zza()Lcom/google/android/gms/internal/firebase_auth/zzbl;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/ActionCodeUrl;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzbl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "apiKey"

    .line 2
    invoke-static {p1, v0}, Lcom/google/firebase/auth/ActionCodeUrl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zza:Ljava/lang/String;

    const-string v1, "oobCode"

    .line 3
    invoke-static {p1, v1}, Lcom/google/firebase/auth/ActionCodeUrl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzb:Ljava/lang/String;

    const-string v2, "mode"

    .line 4
    invoke-static {p1, v2}, Lcom/google/firebase/auth/ActionCodeUrl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzc:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zza:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzb:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzc:Ljava/lang/String;

    if-eqz v3, :cond_40

    const-string v0, "continueUrl"

    .line 8
    invoke-static {p1, v0}, Lcom/google/firebase/auth/ActionCodeUrl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzd:Ljava/lang/String;

    const-string v0, "languageCode"

    .line 9
    invoke-static {p1, v0}, Lcom/google/firebase/auth/ActionCodeUrl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zze:Ljava/lang/String;

    const-string v0, "tenantId"

    .line 10
    invoke-static {p1, v0}, Lcom/google/firebase/auth/ActionCodeUrl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzf:Ljava/lang/String;

    return-void

    .line 6
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s, %s and %s are required in a valid action code URL"

    .line 7
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseLink(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeUrl;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    :try_start_3
    new-instance v0, Lcom/google/firebase/auth/ActionCodeUrl;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/ActionCodeUrl;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "link"

    .line 22
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 23
    :try_start_6
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 24
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 25
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_15
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 27
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 28
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()I
    .registers 4

    .line 17
    sget-object v0, Lcom/google/firebase/auth/ActionCodeUrl;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzbl;

    iget-object v1, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzbl;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeUrl;->zzf:Ljava/lang/String;

    return-object v0
.end method
