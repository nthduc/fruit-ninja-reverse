.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation


# instance fields
.field public final zzap:Z

.field public final zzaq:Z

.field public final zzar:I

.field public final zzas:Z

.field public final zzat:I

.field public final zzau:Ljava/lang/String;

.field public final zzav:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzaw:Z

.field public final zzax:Z

.field public final zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public final zzaz:Ljava/lang/String;

.field private final zzba:I

.field public final zzbb:I


# direct methods
.method private constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzap:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaq:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzar:I

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzas:Z

    .line 6
    iput p5, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzat:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzau:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzav:Ljava/util/ArrayList;

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaw:Z

    .line 10
    iput-boolean p9, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzax:Z

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaz:Ljava/lang/String;

    .line 13
    iput p12, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzba:I

    .line 14
    iput p13, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzbb:I

    return-void
.end method

.method synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IILcom/google/android/gms/games/zzg;)V
    .registers 15

    .line 68
    invoke-direct/range {p0 .. p13}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;II)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    .line 60
    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/zzg;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/games/Games$GamesOptions;)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3
    .param p0    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/games/Games$GamesOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    new-instance p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/zzg;)V

    .line 63
    iput-object p0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1
.end method

.method public static zza(Lcom/google/android/gms/games/Games$GamesOptions;)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3

    .line 61
    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/zzg;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/games/Games$GamesOptions;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzba:I

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 18
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 20
    :cond_a
    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    .line 21
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzap:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzap:Z

    if-ne v1, v3, :cond_79

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaq:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzaq:Z

    if-ne v1, v3, :cond_79

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzar:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzar:I

    if-ne v1, v3, :cond_79

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzas:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzas:Z

    if-ne v1, v3, :cond_79

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzat:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzat:I

    if-ne v1, v3, :cond_79

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzau:Ljava/lang/String;

    if-nez v1, :cond_33

    iget-object v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzau:Ljava/lang/String;

    if-nez v1, :cond_79

    goto :goto_3b

    :cond_33
    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzau:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    :goto_3b
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzav:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzav:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzaw:Z

    if-ne v1, v3, :cond_79

    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzax:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzax:Z

    if-ne v1, v3, :cond_79

    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_5a

    iget-object v1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_79

    goto :goto_62

    :cond_5a
    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    :goto_62
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaz:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzaz:Ljava/lang/String;

    .line 25
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzba:I

    iget v3, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzba:I

    if-ne v1, v3, :cond_79

    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzbb:I

    iget p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzbb:I

    if-ne v1, p1, :cond_79

    return v0

    :cond_79
    return v2
.end method

.method public final getExtensionType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final getImpliedScopes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES_LITE:Lcom/google/android/gms/common/api/Scope;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 27
    iget-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzap:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaq:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzar:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzas:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzau:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzav:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaw:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzax:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    goto :goto_45

    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->hashCode()I

    move-result v1

    :goto_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaz:Ljava/lang/String;

    if-nez v1, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_51
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzba:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzbb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/games/Games$GamesOptions;->zzh()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Landroid/os/Bundle;
    .registers 4

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzap:Z

    const-string v2, "com.google.android.gms.games.key.isHeadless"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaq:Z

    const-string v2, "com.google.android.gms.games.key.showConnectingPopup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzar:I

    const-string v2, "com.google.android.gms.games.key.connectingPopupGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzas:Z

    const-string v2, "com.google.android.gms.games.key.retryingSignIn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzat:I

    const-string v2, "com.google.android.gms.games.key.sdkVariant"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzau:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.forceResolveAccountKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzav:Ljava/util/ArrayList;

    const-string v2, "com.google.android.gms.games.key.proxyApis"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaw:Z

    const-string v2, "com.google.android.gms.games.key.unauthenticated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    iget-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzax:Z

    const-string v2, "com.google.android.gms.games.key.skipWelcomePopup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzay:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v2, "com.google.android.gms.games.key.googleSignInAccount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzaz:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzbb:I

    const-string v2, "com.google.android.gms.games.key.API_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
