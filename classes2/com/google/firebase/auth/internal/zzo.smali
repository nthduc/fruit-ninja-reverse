.class public final Lcom/google/firebase/auth/internal/zzo;
.super Lcom/google/firebase/auth/FirebaseAuthSettings;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuthSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAutoRetrievedSmsCodeForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzo;->zza:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zza:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
