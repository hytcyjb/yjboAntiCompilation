.class public Lcom/didi/common/ui/datepicker/BookingDatePicker;
.super Ljava/lang/Object;
.source "BookingDatePicker.java"


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mBtnCancel:Landroid/widget/TextView;

.field private mBtnConfirm:Landroid/widget/TextView;

.field private mMsg:Landroid/os/Message;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mTimePicker:Lcom/example/timepicker/TimePicker;

.field private myView:Landroid/view/View;

.field private parentPopView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/os/Message;)V
    .locals 4
    .parameter "activity"
    .parameter "view"
    .parameter "msg"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/datepicker/BookingDatePicker$1;-><init>(Lcom/didi/common/ui/datepicker/BookingDatePicker;)V

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->clickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mActivity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->parentPopView:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mMsg:Landroid/os/Message;

    .line 40
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300db

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->myView:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->myView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 42
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->myView:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mBtnConfirm:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->myView:Landroid/view/View;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mBtnCancel:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->myView:Landroid/view/View;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/timepicker/TimePicker;

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mTimePicker:Lcom/example/timepicker/TimePicker;

    .line 45
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mBtnConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mBtnCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->myView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->newSelectPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->isTimeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/datepicker/BookingDatePicker;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/datepicker/BookingDatePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->getBookingDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookingDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mTimePicker:Lcom/example/timepicker/TimePicker;

    invoke-virtual {v1}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 112
    .local v0, time:Lcom/didi/common/base/DateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mTimePicker:Lcom/example/timepicker/TimePicker;

    invoke-virtual {v2}, Lcom/example/timepicker/TimePicker;->getDayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-virtual {v0, v2}, Lcom/didi/common/base/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isTimeAvailable()Z
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/didi/common/base/DateTime;

    invoke-direct {v0}, Lcom/didi/common/base/DateTime;-><init>()V

    .line 105
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/didi/common/base/DateTime;->addMinute(I)V

    .line 106
    iget-object v2, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mTimePicker:Lcom/example/timepicker/TimePicker;

    invoke-virtual {v2}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 107
    .local v1, time:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1, v0}, Lcom/didi/common/base/DateTime;->isAfter(Lcom/didi/common/base/DateTime;)Z

    move-result v2

    return v2
.end method

.method private newSelectPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 51
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 52
    .local v0, popupWindow:Landroid/widget/PopupWindow;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 54
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 55
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 56
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 64
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/didi/common/ui/datepicker/BookingDatePicker;->parentPopView:Landroid/view/View;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
