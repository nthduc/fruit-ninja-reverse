.class synthetic Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 799
    invoke-static {}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->values()[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9e
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_aa
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b6
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c2
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_ce

    :catch_ce
    :try_start_ce
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_da

    :catch_da
    :try_start_da
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_e6

    :catch_e6
    :try_start_e6
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_fe

    :catch_fe
    :try_start_fe
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_10a

    :catch_10a
    :try_start_10a
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_116

    :catch_116
    :try_start_116
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_122

    :catch_122
    :try_start_122
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_12e

    :catch_12e
    :try_start_12e
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_13a

    :catch_13a
    :try_start_13a
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_146

    :catch_146
    :try_start_146
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_152

    :catch_152
    :try_start_152
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_15e

    :catch_15e
    :try_start_15e
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_16a

    :catch_16a
    :try_start_16a
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_176

    :catch_176
    :try_start_176
    sget-object v0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_182

    :catch_182
    return-void
.end method
