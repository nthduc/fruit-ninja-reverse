.class public Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/OAuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialBuilder"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zza:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/zzv;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/auth/AuthCredential;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzd:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/auth/zzc;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzc;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setIdTokenWithRawNonce(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzb:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/firebase/auth/OAuthProvider$CredentialBuilder;->zzd:Ljava/lang/String;

    return-object p0
.end method
