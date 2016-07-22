.class final enum Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
.super Ljava/lang/Enum;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FuncState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

.field public static final enum CANCEL_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

.field public static final enum DELETE:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

.field public static final enum OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    const-string v1, "OPEN_EDIT"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    const-string v1, "CANCEL_EDIT"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->CANCEL_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->DELETE:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 191
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->CANCEL_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->DELETE:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->$VALUES:[Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    .locals 1
    .parameter "name"

    .prologue
    .line 191
    const-class v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->$VALUES:[Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    invoke-virtual {v0}, [Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    return-object v0
.end method


# virtual methods
.method public next()Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 202
    .local v0, nextState:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$23;->$SwitchMap$com$didi$common$ui$fragment$CommonHistoryOrdersFragment$FuncState:[I

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->CANCEL_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 205
    goto :goto_0

    .line 207
    :pswitch_1
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 208
    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
