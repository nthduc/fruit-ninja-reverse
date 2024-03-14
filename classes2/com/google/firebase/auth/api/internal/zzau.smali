.class public final Lcom/google/firebase/auth/api/internal/zzau;
.super Lcom/google/firebase/auth/api/internal/zzam;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/auth/api/internal/zzam<",
        "Lcom/google/firebase/auth/api/internal/zzeu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/firebase/auth/api/internal/zzeu;

.field private final zzc:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/google/firebase/auth/api/internal/zzal<",
            "Lcom/google/firebase/auth/api/internal/zzeu;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/api/internal/zzeu;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/api/internal/zzam;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzau;->zza:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzau;->zzb:Lcom/google/firebase/auth/api/internal/zzeu;

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/auth/api/internal/zzam;->zza()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzau;->zzc:Ljava/util/concurrent/Future;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;",
            "Lcom/google/firebase/auth/api/internal/zzap<",
            "Lcom/google/firebase/auth/api/internal/zzef;",
            "TResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzat;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzat;-><init>(Lcom/google/firebase/auth/api/internal/zzau;Lcom/google/firebase/auth/api/internal/zzap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_auth/zzew;)Lcom/google/firebase/auth/internal/zzn;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v1, Lcom/google/firebase/auth/internal/zzj;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/auth/internal/zzj;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzew;Ljava/lang/String;)V

    .line 327
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzj()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 329
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x0

    .line 330
    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 331
    new-instance v3, Lcom/google/firebase/auth/internal/zzj;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzfj;

    invoke-direct {v3, v4}, Lcom/google/firebase/auth/internal/zzj;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzfj;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 333
    :cond_39
    new-instance v1, Lcom/google/firebase/auth/internal/zzn;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/internal/zzn;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 334
    new-instance p0, Lcom/google/firebase/auth/internal/zzp;

    .line 335
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzh()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzg()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzp;-><init>(JJ)V

    .line 336
    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzn;->zza(Lcom/google/firebase/auth/internal/zzp;)V

    .line 337
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzi()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzn;->zza(Z)V

    .line 338
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzl()Lcom/google/firebase/auth/zzc;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzn;->zza(Lcom/google/firebase/auth/zzc;)V

    .line 340
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->zzm()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/auth/internal/zzat;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 341
    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzco;

    invoke-direct {v0, p3, p2}, Lcom/google/firebase/auth/api/internal/zzco;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzco;

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcw;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzcw;-><init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcw;

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 32
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdc;

    invoke-direct {v0, p2}, Lcom/google/firebase/auth/api/internal/zzdc;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p3}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdc;

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 103
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zza()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 201
    invoke-virtual {p3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 202
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 203
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 204
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 205
    :cond_2c
    instance-of v0, p3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_78

    .line 206
    check-cast p3, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzg()Z

    move-result v0

    if-nez v0, :cond_58

    .line 208
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbo;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzbo;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 209
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 210
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbo;

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 215
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 218
    :cond_58
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbu;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzbu;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 219
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 221
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbu;

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 225
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 227
    :cond_78
    instance-of v0, p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_9e

    .line 228
    check-cast p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 229
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbs;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzbs;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 230
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 231
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 232
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 233
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbs;

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 236
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 239
    :cond_9e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbq;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzbq;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 246
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 247
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbq;

    .line 249
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 250
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbw;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/auth/api/internal/zzbw;-><init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbw;

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 40
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzca;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzca;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 121
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 124
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzca;

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 127
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdu;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzdu;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdu;

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 85
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzci;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/auth/api/internal/zzci;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzci;

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 149
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneMultiFactorAssertion;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbk;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/auth/api/internal/zzbk;-><init>(Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    if-eqz p2, :cond_11

    .line 311
    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    .line 312
    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdw;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzdw;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 64
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdw;

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcm;

    invoke-direct {v0}, Lcom/google/firebase/auth/api/internal/zzcm;-><init>()V

    .line 283
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 284
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p3}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 286
    invoke-virtual {p1, p3}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcm;

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zza(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbm;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzbm;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbm;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zza(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzce;

    invoke-direct {v0, p3, p4, p5}, Lcom/google/firebase/auth/api/internal/zzce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzce;

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 111
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzde;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzde;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzde;

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 141
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneMultiFactorAssertion;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbi;

    .line 301
    invoke-virtual {p3}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/auth/api/internal/zzbi;-><init>(Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    .line 303
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zza;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/internal/zza;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcu;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzcu;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcu;

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 54
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    .line 164
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcq;

    const-string v1, "sendPasswordResetEmail"

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/google/firebase/auth/api/internal/zzcq;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcq;

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 168
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/SignInMethodQueryResult;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbg;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzbg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbg;

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zza(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 162
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcy;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzcy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcy;

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 26
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzba;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/auth/api/internal/zzba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzba;

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 195
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbc;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/auth/api/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbc;

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzad;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzad;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzbe;

    invoke-direct {v0}, Lcom/google/firebase/auth/api/internal/zzbe;-><init>()V

    .line 289
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 290
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 291
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzbe;

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzy;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;JZZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .registers 20
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzy;",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            "Ljava/lang/String;",
            "JZZ",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v8, Lcom/google/firebase/auth/api/internal/zzdi;

    .line 305
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzy;->zzb()Ljava/lang/String;

    move-result-object v2

    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/api/internal/zzdi;-><init>(Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Ljava/lang/String;JZZ)V

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    .line 306
    invoke-virtual {v8, v0, v2, v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-object v0, p0

    .line 307
    invoke-virtual {p0, v8}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzy;Ljava/lang/String;Ljava/lang/String;JZZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .registers 20
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZ",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v8, Lcom/google/firebase/auth/api/internal/zzdg;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/api/internal/zzdg;-><init>(Lcom/google/firebase/auth/internal/zzy;Ljava/lang/String;Ljava/lang/String;JZZ)V

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    .line 298
    invoke-virtual {v8, v0, v2, v1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-object v0, p0

    .line 299
    invoke-virtual {p0, v8}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcs;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/api/internal/zzcs;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    .line 321
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/auth/api/internal/zzdy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zza()Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/firebase/auth/api/internal/zzal<",
            "Lcom/google/firebase/auth/api/internal/zzeu;",
            ">;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzau;->zzc:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzau;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzau;->zzb:Lcom/google/firebase/auth/api/internal/zzeu;

    .line 10
    new-instance v2, Lcom/google/firebase/auth/api/internal/zzed;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/auth/api/internal/zzed;-><init>(Lcom/google/firebase/auth/api/internal/zzeu;Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzf;->zza()Lcom/google/android/gms/internal/firebase_auth/zzg;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzk;->zza:I

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzg;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 13
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzec;

    invoke-direct {v0, p2}, Lcom/google/firebase/auth/api/internal/zzec;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzfr;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p3, p4, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzec;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzby;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/auth/api/internal/zzby;-><init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzby;

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 48
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcc;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzcc;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcc;

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 135
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzck;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/auth/api/internal/zzck;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzck;

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 157
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdq;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzdq;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdq;

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcg;

    invoke-direct {v0, p3, p4, p5}, Lcom/google/firebase/auth/api/internal/zzcg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 114
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 115
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcg;

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 119
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zze:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    .line 170
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzcq;

    const-string v1, "sendSignInLinkToEmail"

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/google/firebase/auth/api/internal/zzcq;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzcq;

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 174
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzay;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzay;

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zza;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zza;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzda;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/auth/api/internal/zzda;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzda;

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzds;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzds;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzds;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzaw;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzaw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzaw;

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zza()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 257
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_18
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 258
    :cond_1e
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4278

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 259
    invoke-static {p1}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 v0, -0x1

    .line 261
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4889ba9b

    if-eq v1, v2, :cond_39

    goto :goto_42

    :cond_39
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x0

    :cond_42
    :goto_42
    if-eqz v0, :cond_64

    .line 273
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdo;

    invoke-direct {v0, p3}, Lcom/google/firebase/auth/api/internal/zzdo;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 277
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdo;

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 280
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 263
    :cond_64
    new-instance p3, Lcom/google/firebase/auth/api/internal/zzdm;

    invoke-direct {p3}, Lcom/google/firebase/auth/api/internal/zzdm;-><init>()V

    .line 264
    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 265
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 266
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 267
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdm;

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 270
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzea;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzea;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzea;

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 190
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzau;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzba;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzba;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzdk;

    .line 314
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/firebase/auth/api/internal/zzdk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 316
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 317
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Ljava/lang/Object;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    .line 318
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/api/internal/zzfe;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/firebase/auth/api/internal/zzfe;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzdk;

    .line 319
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/api/internal/zzam;->zzb(Lcom/google/firebase/auth/api/internal/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
