.class Lcom/helpshift/conversation/viewmodel/ListPickerVM;
.super Ljava/lang/Object;
.source "ListPickerVM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/conversation/viewmodel/ListPickerVM$WordSubStringFilter;,
        Lcom/helpshift/conversation/viewmodel/ListPickerVM$WordPrefixOptionFilter;,
        Lcom/helpshift/conversation/viewmodel/ListPickerVM$SentencePrefixOptionFilter;,
        Lcom/helpshift/conversation/viewmodel/ListPickerVM$BaseOptionFilter;,
        Lcom/helpshift/conversation/viewmodel/ListPickerVM$CompositeOptionFilter;,
        Lcom/helpshift/conversation/viewmodel/ListPickerVM$OptionFilter;
    }
.end annotation


# static fields
.field private static final MIN_CHAR_FOR_SEARCH:I = 0x2

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private domain:Lcom/helpshift/common/domain/Domain;

.field private final listPickerVMCallback:Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;

.field private final messageDM:Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 30
    iput-object p2, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->messageDM:Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    .line 31
    iput-object p3, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->listPickerVMCallback:Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->messageDM:Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyShowEmptyListPickerView()V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/conversation/viewmodel/ListPickerVM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Ljava/util/List;)Lcom/helpshift/conversation/viewmodel/OptionUIModel;
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->convertToOptionUIModel(Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Ljava/util/List;)Lcom/helpshift/conversation/viewmodel/OptionUIModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/helpshift/conversation/viewmodel/ListPickerVM;Ljava/util/List;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyListPickerOptions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->listPickerVMCallback:Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;

    return-object p0
.end method

.method private convertToOptionUIModel(Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Ljava/util/List;)Lcom/helpshift/conversation/viewmodel/OptionUIModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/helpshift/conversation/viewmodel/OptionUIModel;"
        }
    .end annotation

    .line 169
    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 170
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->getHighlightInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 172
    :goto_e
    new-instance v0, Lcom/helpshift/conversation/viewmodel/OptionUIModel;

    invoke-direct {v0, p1, p2}, Lcom/helpshift/conversation/viewmodel/OptionUIModel;-><init>(Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Ljava/util/List;)V

    return-object v0
.end method

.method private convertToOptionUIModels(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/viewmodel/OptionUIModel;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;

    .line 162
    invoke-direct {p0, v1, p2}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->convertToOptionUIModel(Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Ljava/util/List;)Lcom/helpshift/conversation/viewmodel/OptionUIModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method private notifyHideClearButton()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ListPickerVM$3;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM$3;-><init>(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private notifyListPickerOptions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/viewmodel/OptionUIModel;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ListPickerVM$5;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM$5;-><init>(Lcom/helpshift/conversation/viewmodel/ListPickerVM;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private notifyShowClearButton()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ListPickerVM$2;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM$2;-><init>(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private notifyShowEmptyListPickerView()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/viewmodel/ListPickerVM$4;

    invoke-direct {v1, p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM$4;-><init>(Lcom/helpshift/conversation/viewmodel/ListPickerVM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runOnUI(Lcom/helpshift/common/domain/F;)V

    return-void
.end method


# virtual methods
.method getAllOptions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/viewmodel/OptionUIModel;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->messageDM:Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->options:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->convertToOptionUIModels(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getHighlightInfo(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/viewmodel/HSRange;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_81

    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_81

    .line 203
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 208
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_20
    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    invoke-static {v3}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_20

    .line 212
    :cond_33
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 216
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 217
    :cond_50
    :goto_50
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 218
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 220
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    sub-int/2addr v5, v4

    .line 221
    new-instance v6, Lcom/helpshift/conversation/viewmodel/HSRange;

    invoke-direct {v6, v4, v5}, Lcom/helpshift/conversation/viewmodel/HSRange;-><init>(II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 228
    :cond_79
    invoke-static {v0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_80

    return-object v1

    :cond_80
    return-object v0

    :cond_81
    :goto_81
    return-object v1
.end method

.method handleOptionSelectedForPicker(Lcom/helpshift/conversation/viewmodel/OptionUIModel;Z)V
    .registers 5

    if-eqz p2, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    .line 176
    :cond_4
    iget-object p1, p1, Lcom/helpshift/conversation/viewmodel/OptionUIModel;->option:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;

    .line 177
    :goto_6
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->listPickerVMCallback:Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;

    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->messageDM:Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;

    invoke-interface {v0, v1, p1, p2}, Lcom/helpshift/conversation/viewmodel/ListPickerVMCallback;->handleOptionSelectedForPicker(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V

    return-void
.end method

.method onListPickerSearchQueryChange(Ljava/lang/String;)V
    .registers 8

    .line 46
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->getAllOptions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyListPickerOptions(Ljava/util/List;)V

    .line 48
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyHideClearButton()V

    return-void

    .line 53
    :cond_11
    invoke-direct {p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyShowClearButton()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_27

    .line 58
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->getAllOptions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyListPickerOptions(Ljava/util/List;)V

    return-void

    :cond_27
    const-string v0, "\\b"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    array-length v2, p1

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_4c

    aget-object v4, p1, v3

    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v1, :cond_49

    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 74
    :cond_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5a

    .line 75
    invoke-virtual {p0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->getAllOptions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->notifyListPickerOptions(Ljava/util/List;)V

    return-void

    .line 78
    :cond_5a
    sget-object p1, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 80
    :try_start_5d
    iget-object v1, p0, Lcom/helpshift/conversation/viewmodel/ListPickerVM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v2, Lcom/helpshift/conversation/viewmodel/ListPickerVM$1;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/conversation/viewmodel/ListPickerVM$1;-><init>(Lcom/helpshift/conversation/viewmodel/ListPickerVM;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    .line 104
    monitor-exit p1

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_69

    throw v0

    return-void
.end method
