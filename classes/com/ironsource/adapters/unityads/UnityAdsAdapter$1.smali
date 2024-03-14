.class synthetic Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;
.super Ljava/lang/Object;
.source "UnityAdsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

.field static final synthetic $SwitchMap$com$unity3d$ads$UnityAds$PlacementState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 519
    invoke-static {}, Lcom/unity3d/ads/UnityAds$PlacementState;->values()[Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$PlacementState:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$PlacementState:[I

    sget-object v2, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {v2}, Lcom/unity3d/ads/UnityAds$PlacementState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$PlacementState:[I

    sget-object v3, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {v3}, Lcom/unity3d/ads/UnityAds$PlacementState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$PlacementState:[I

    sget-object v4, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {v4}, Lcom/unity3d/ads/UnityAds$PlacementState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$PlacementState:[I

    sget-object v4, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {v4}, Lcom/unity3d/ads/UnityAds$PlacementState;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    .line 423
    :catch_35
    invoke-static {}, Lcom/unity3d/ads/UnityAds$FinishState;->values()[Lcom/unity3d/ads/UnityAds$FinishState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    :try_start_3e
    sget-object v3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    sget-object v4, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v4}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    sget-object v3, Lcom/unity3d/ads/UnityAds$FinishState;->SKIPPED:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v3}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v1}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method
