.class public Lcom/facebook/appevents/codeless/internal/ViewHierarchy;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CLASS_RCTROOTVIEW:Ljava/lang/String; = "com.facebook.react.ReactRootView"

.field private static final CLASS_RCTTEXTVIEW:Ljava/lang/String; = "com.facebook.react.views.view.ReactTextView"

.field private static final CLASS_RCTVIEWGROUP:Ljava/lang/String; = "com.facebook.react.views.view.ReactViewGroup"

.field private static final CLASS_TOUCHTARGETHELPER:Ljava/lang/String; = "com.facebook.react.uimanager.TouchTargetHelper"

.field private static final ICON_MAX_EDGE_LENGTH:I = 0x2c

.field private static final METHOD_FIND_TOUCHTARGET_VIEW:Ljava/lang/String; = "findTouchTargetView"

.field private static RCTRootViewReference:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.codeless.internal.ViewHierarchy"

.field private static methodFindTouchTargetView:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 80
    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRCTRootView(Landroid/view/View;)Landroid/view/View;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :goto_a
    if-eqz p0, :cond_24

    .line 497
    :try_start_c
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTRootView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p0

    .line 500
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 501
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_24

    .line 502
    check-cast p0, Landroid/view/View;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_a

    :catch_1e
    move-exception p0

    .line 507
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_24
    return-object v1
.end method

.method public static getChildrenOfView(Landroid/view/View;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 97
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_26

    .line 100
    check-cast p0, Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_26

    .line 103
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_27

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_26
    return-object v0

    :catch_27
    move-exception p0

    .line 107
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getClassTypeBitmask(Landroid/view/View;)I
    .registers 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 203
    :cond_a
    :try_start_a
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 207
    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_19

    or-int/lit8 v0, v0, 0x20

    .line 210
    :cond_19
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isAdapterViewItem(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_21

    or-int/lit16 v0, v0, 0x200

    .line 214
    :cond_21
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_45

    or-int/lit16 v0, v0, 0x400

    or-int/lit8 v0, v0, 0x1

    .line 218
    instance-of v2, p0, Landroid/widget/Button;

    if-eqz v2, :cond_3e

    or-int/lit8 v0, v0, 0x4

    .line 221
    instance-of v2, p0, Landroid/widget/Switch;

    if-eqz v2, :cond_36

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3e

    .line 223
    :cond_36
    instance-of v2, p0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_3e

    const v2, 0x8000

    or-int/2addr v0, v2

    .line 228
    :cond_3e
    :goto_3e
    instance-of p0, p0, Landroid/widget/EditText;

    if-eqz p0, :cond_74

    or-int/lit16 v0, v0, 0x800

    goto :goto_74

    .line 231
    :cond_45
    instance-of v2, p0, Landroid/widget/Spinner;

    if-nez v2, :cond_72

    instance-of v2, p0, Landroid/widget/DatePicker;

    if-eqz v2, :cond_4e

    goto :goto_72

    .line 233
    :cond_4e
    instance-of v2, p0, Landroid/widget/RatingBar;

    if-eqz v2, :cond_56

    const/high16 p0, 0x10000

    or-int/2addr v0, p0

    goto :goto_74

    .line 235
    :cond_56
    instance-of v2, p0, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_5d

    or-int/lit16 v0, v0, 0x4000

    goto :goto_74

    .line 237
    :cond_5d
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_74

    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {p0, v2}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result p0
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_6d} :catch_75

    if-eqz p0, :cond_74

    or-int/lit8 v0, v0, 0x40

    goto :goto_74

    :cond_72
    :goto_72
    or-int/lit16 v0, v0, 0x1000

    :cond_74
    :goto_74
    return v0

    :catch_75
    move-exception p0

    .line 241
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 177
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 181
    :cond_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_26} :catch_58

    .line 184
    :try_start_26
    invoke-static {p0, v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->updateBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 186
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 187
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    .line 188
    :goto_33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 189
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 190
    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 191
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_49
    const-string p0, "childviews"

    .line 193
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_4e} :catch_58

    goto :goto_57

    :catch_4f
    move-exception p0

    .line 195
    :try_start_50
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for view."

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_57} :catch_58

    :goto_57
    return-object v0

    :catch_58
    move-exception p0

    .line 198
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 324
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_58

    :try_start_f
    const-string v2, "top"

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "left"

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "width"

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "scrollx"

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "scrolly"

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "visibility"

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_4e} :catch_58

    goto :goto_57

    :catch_4f
    move-exception p0

    .line 335
    :try_start_50
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for dimension."

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_57} :catch_58

    :goto_57
    return-object v0

    :catch_58
    move-exception p0

    .line 338
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getExistingClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 539
    :cond_a
    :try_start_a
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_e} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 541
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_15
    return-object v1
.end method

.method public static getExistingOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "android.view.View"

    .line 345
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mListenerInfo"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 350
    :cond_1c
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_23

    return-object v1

    :cond_23
    const-string v0, "android.view.View$ListenerInfo"

    .line 357
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mOnClickListener"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnClickListener;
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_3a} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_3a} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_3a} :catch_43
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_3a} :catch_3d

    goto :goto_3c

    :cond_3b
    move-object p0, v1

    :goto_3c
    return-object p0

    :catch_3d
    move-exception p0

    .line 371
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_43
    return-object v1
.end method

.method public static getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "android.view.View"

    .line 419
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mListenerInfo"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    :cond_1c
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_23

    return-object v1

    :cond_23
    const-string v0, "android.view.View$ListenerInfo"

    .line 431
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mOnTouchListener"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 434
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnTouchListener;
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_3a} :catch_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_3a} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_3a} :catch_3f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_3a} :catch_3d

    goto :goto_3c

    :cond_3b
    move-object p0, v1

    :goto_3c
    return-object p0

    :catch_3d
    move-exception p0

    goto :goto_54

    :catch_3f
    move-exception p0

    .line 443
    :try_start_40
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_53

    :catch_46
    move-exception p0

    .line 441
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_53

    :catch_4d
    move-exception p0

    .line 439
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_53} :catch_3d

    :goto_53
    return-object v1

    .line 445
    :goto_54
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getHintOfView(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 314
    :cond_a
    :try_start_a
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_15

    .line 315
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_21

    .line 316
    :cond_15
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_20

    .line 317
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_21

    :cond_20
    move-object p0, v1

    :goto_21
    if-nez p0, :cond_26

    const-string p0, ""

    goto :goto_2a

    .line 320
    :cond_26
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2a} :catch_2b

    :goto_2a
    return-object p0

    :catch_2b
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-nez p0, :cond_d

    return-object v1

    .line 88
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 89
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    .line 90
    check-cast p0, Landroid/view/ViewGroup;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_17} :catch_19

    return-object p0

    :cond_18
    return-object v1

    :catch_19
    move-exception p0

    .line 93
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getTextOfView(Landroid/view/View;)Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 266
    :cond_a
    :try_start_a
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 267
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    instance-of v2, p0, Landroid/widget/Switch;

    if-eqz v2, :cond_29

    .line 270
    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "1"

    goto/16 :goto_db

    :cond_25
    const-string p0, "0"

    goto/16 :goto_db

    :cond_29
    move-object p0, v0

    goto/16 :goto_db

    .line 273
    :cond_2c
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_47

    .line 274
    move-object v0, p0

    check-cast v0, Landroid/widget/Spinner;

    .line 275
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lez v0, :cond_da

    .line 276
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_da

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_db

    .line 281
    :cond_47
    instance-of v0, p0, Landroid/widget/DatePicker;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_78

    .line 282
    check-cast p0, Landroid/widget/DatePicker;

    .line 283
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    .line 284
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v5

    .line 285
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v6, "%04d-%02d-%02d"

    const/4 v7, 0x3

    .line 286
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_db

    .line 287
    :cond_78
    instance-of v0, p0, Landroid/widget/TimePicker;

    if-eqz v0, :cond_a3

    .line 288
    check-cast p0, Landroid/widget/TimePicker;

    .line 289
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 290
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v5, "%02d:%02d"

    .line 291
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_db

    .line 292
    :cond_a3
    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_cb

    .line 293
    check-cast p0, Landroid/widget/RadioGroup;

    .line 294
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    :goto_b1
    if-ge v4, v2, :cond_da

    .line 297
    invoke-virtual {p0, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v0, :cond_c8

    instance-of v5, v3, Landroid/widget/RadioButton;

    if-eqz v5, :cond_c8

    .line 299
    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_db

    :cond_c8
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 303
    :cond_cb
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_da

    .line 304
    check-cast p0, Landroid/widget/RatingBar;

    .line 305
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result p0

    .line 306
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    goto :goto_db

    :cond_da
    move-object p0, v1

    :goto_db
    if-nez p0, :cond_e0

    const-string p0, ""

    goto :goto_e4

    .line 309
    :cond_e0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e4} :catch_e5

    :goto_e4
    return-object p0

    :catch_e5
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getTouchReactView([FLandroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 450
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->initTouchTargetHelperMethods()V

    .line 451
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_46

    if-eqz v0, :cond_45

    if-nez p1, :cond_14

    goto :goto_45

    .line 456
    :cond_14
    :try_start_14
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_45

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    if-lez p1, :cond_45

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_33} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_33} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_33} :catch_46

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    move-object p0, v1

    :goto_37
    return-object p0

    :catch_38
    move-exception p0

    .line 464
    :try_start_39
    sget-object p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_45

    :catch_3f
    move-exception p0

    .line 462
    sget-object p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    return-object v1

    :catch_46
    move-exception p0

    .line 467
    const-class p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getViewLocationOnScreen(Landroid/view/View;)[F
    .registers 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x2

    .line 511
    :try_start_b
    new-array v2, v0, [I

    .line 512
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 513
    new-array p0, v0, [F

    const/4 v0, 0x0

    .line 514
    aget v3, v2, v0

    int-to-float v3, v3

    aput v3, p0, v0

    const/4 v0, 0x1

    .line 515
    aget v2, v2, v0

    int-to-float v2, v2

    aput v2, p0, v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 516
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static initTouchTargetHelperMethods()V
    .registers 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 520
    :cond_9
    :try_start_9
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b} :catch_3d

    if-eqz v0, :cond_e

    return-void

    :cond_e
    :try_start_e
    const-string v0, "com.facebook.react.uimanager.TouchTargetHelper"

    .line 525
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTouchTargetView"

    const/4 v2, 0x2

    .line 526
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [F

    aput-object v4, v2, v3

    const-class v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 527
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    .line 529
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_2e} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2e} :catch_3d

    goto :goto_3c

    :catch_2f
    move-exception v0

    .line 533
    :try_start_30
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3c

    :catch_36
    move-exception v0

    .line 531
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3c} :catch_3d

    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    .line 535
    const-class v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static isAdapterViewItem(Landroid/view/View;)Z
    .registers 5

    const-string v0, "androidx.core.view.NestedScrollingChild"

    const-class v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 245
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 246
    instance-of v1, p0, Landroid/widget/AdapterView;

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    return v3

    .line 251
    :cond_16
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 252
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    return v3

    .line 256
    :cond_23
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2d} :catch_31

    if-eqz p0, :cond_30

    return v3

    :cond_30
    return v2

    :catch_31
    move-exception p0

    .line 261
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static isRCTButton(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 472
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.facebook.react.views.view.ReactViewGroup"

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 474
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getViewLocationOnScreen(Landroid/view/View;)[F

    move-result-object v0

    .line 475
    invoke-static {v0, p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTouchReactView([FLandroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2c} :catch_30

    if-ne p1, p0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1

    :catch_30
    move-exception p0

    .line 479
    const-class p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static isRCTRootView(Landroid/view/View;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 483
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.facebook.react.ReactRootView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static isRCTTextView(Landroid/view/View;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 487
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.facebook.react.views.view.ReactTextView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static isRCTViewGroup(Landroid/view/View;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 491
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    const-string v1, "android.view.View"

    .line 379
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mListenerInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_16} :catch_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_16} :catch_23

    :try_start_16
    const-string v2, "android.view.View$ListenerInfo"

    .line 381
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mOnClickListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_22} :catch_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_22} :catch_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    goto :goto_48

    :catch_25
    move-object v1, v0

    :catch_26
    move-object v2, v0

    :goto_27
    if-eqz v1, :cond_44

    if-nez v2, :cond_2c

    goto :goto_44

    :cond_2c
    const/4 v3, 0x1

    .line 393
    :try_start_2d
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_33} :catch_23

    .line 398
    :try_start_33
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 399
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_3a} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3a} :catch_23

    :catch_3a
    if-nez v0, :cond_40

    .line 405
    :try_start_3c
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 409
    :cond_40
    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4d

    .line 389
    :cond_44
    :goto_44
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_23

    return-void

    .line 413
    :goto_48
    const-class p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_4d
    :goto_4d
    return-void
.end method

.method public static updateAppearanceOfView(Landroid/view/View;Lorg/json/JSONObject;F)V
    .registers 9

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 144
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 145
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    .line 146
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_3c

    const-string v3, "font_size"

    .line 149
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "is_bold"

    .line 150
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_italic"

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "text_style"

    .line 152
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_3c
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_8c

    .line 156
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8c

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    const/high16 v2, 0x42300000    # 44.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_8c

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_8c

    .line 160
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_8c

    .line 162
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 164
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x0

    .line 165
    invoke-static {p0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p2, "icon_image"

    .line 166
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_83} :catch_86
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_83} :catch_84

    goto :goto_8c

    :catch_84
    move-exception p0

    goto :goto_8d

    :catch_86
    move-exception p0

    .line 172
    :try_start_87
    sget-object p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8c} :catch_84

    :cond_8c
    :goto_8c
    return-void

    .line 174
    :goto_8d
    const-class p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static updateBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 9

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 112
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "classname"

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "classtypebitmask"

    .line 118
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "id"

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v4
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3c} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3c} :catch_94

    const-string v5, "text"

    const-string v6, ""

    if-nez v4, :cond_4e

    .line 121
    :try_start_42
    invoke-static {v0}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_57

    .line 123
    :cond_4e
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_user_input"

    const/4 v4, 0x1

    .line 124
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_57
    const-string v0, "hint"

    .line 126
    invoke-static {v1}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_77

    const-string v0, "tag"

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_77
    if-eqz v3, :cond_8a

    const-string v0, "description"

    .line 133
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_8a
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "dimension"

    .line 136
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_93} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_93} :catch_94

    goto :goto_9c

    :catch_94
    move-exception p0

    goto :goto_9d

    :catch_96
    move-exception p0

    .line 138
    :try_start_97
    sget-object p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9c} :catch_94

    :goto_9c
    return-void

    .line 140
    :goto_9d
    const-class p1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
